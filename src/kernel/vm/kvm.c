#include "vm.h"
#include "x86.h"
#include "string.h"
#include "assert.h"

#define PG_ALIGN __attribute((aligned(PG_SIZE)))
PDE kpdir[NR_PDE] PG_ALIGN;            // the kernel page directory
PTE kptab[MEM_MAX / PG_SIZE] PG_ALIGN; // the kernel page tables
SegDesc gdt[NR_SEG];                   // the new GDT
TSS tss;                               // one TSS for all ring 3 processes

PDE updir_pool[NR_PDE * USER_SUM] PG_ALIGN; // the user page directory pool

boolean bitmap_address[USER_SUM] = {FALSE};
boolean bitmap_dir[USER_SUM] = {FALSE};

PDE *
get_free_pdir(void){
    int i;
    for ( i = 0 ; i < USER_SUM ; i++ ){
        if (bitmap_dir[i] == FALSE){
            bitmap_dir[i] = TRUE;
            return &updir_pool[i * NR_PDE];
        }
    }
    assert(FALSE);
    return (PDE *)0;
}

uint32_t 
get_free_address(void){
    int i;
    for ( i = 0 ; i < USER_SUM ; i++ ){
        if (bitmap_address[i] == FALSE){
            bitmap_address[i] = TRUE;
            return USER_MEM + i * USER_SIZE;
        }
    }
    assert(FALSE);//no free space , panic
    return 0;
}

#define USER_CODE  0x08048000
#define USER_STACK 0xc0000000

void 
alloc_address(PDE *user_pdir){
    memset((void*)user_pdir , 0 , PG_SIZE);
    uint32_t pa;
    PDE *pdir = user_pdir;

	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE * NR_PTE) {
		*(pdir + KOFFSET / PG_SIZE / NR_PTE) = *pdir =
			PTE_P | PTE_W | va_to_pa(&kptab[pa / PG_SIZE]);
		pdir ++;
	}

    *(user_pdir + USER_CODE / PG_SIZE / NR_PTE) =                               //code and data
    *(user_pdir + USER_STACK / PG_SIZE / NR_PTE - 1) =                          //stack
        PTE_P | PTE_W | PTE_U | va_to_pa(&kptab[get_free_address() / PG_SIZE]);

}

/*
 * menery mapping
 * +------------------------------+------------------+------------------------------------------+
 * |0x00000000  bootlaoder  0x00100000  kernel  0x01000000 user_code & user_stack 0x08000000 end|
 * +------------------------------+------------------+------------------------------------------+
 */

void
init_kvm(void) { // setup kernel memory mapping
	uint32_t pa;
	PTE *ptab = (PTE*)va_to_pa(kptab);
	PDE *pdir = (PDE*)va_to_pa(kpdir);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE) {
        if (pa < USER_MEM)
		    *ptab = PTE_P | PTE_W | pa;
        else
            *ptab = PTE_P | PTE_W | PTE_U | pa;
		ptab ++;
	}
	memset((void*)va_to_pa(pdir), 0, PG_SIZE);
	for (pa = 0; pa < MEM_MAX; pa += PG_SIZE * NR_PTE) {
		*(pdir + KOFFSET / PG_SIZE / NR_PTE) = *pdir =
			PTE_P | PTE_W | va_to_pa(&kptab[pa / PG_SIZE]);
		pdir ++;
	}
	set_cr3((void*)va_to_pa(kpdir));  // set PDBR(CR3)
	set_cr0(get_cr0() | CR0_PG);      // enable paging
}

void
init_seg() { // setup kernel segements
	gdt[SEG_KCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_KERN);
	gdt[SEG_KDATA] = SEG(STA_W,         0,       0xffffffff, DPL_KERN);
	gdt[SEG_UCODE] = SEG(STA_X | STA_R, 0,       0xffffffff, DPL_USER);
	gdt[SEG_UDATA] = SEG(STA_W,         0,       0xffffffff, DPL_USER);	
    gdt[SEG_TSS] = SEG16(STS_T32A,      &tss, sizeof(tss)-1, DPL_KERN);
    tss.ss0 = KSEL(SEG_KDATA); 
    set_gdt(gdt, sizeof(gdt));
    set_tr(0x2B);
}
