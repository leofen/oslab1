/*
 * =====================================================================================
 *
 *       Filename:  thread.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013年05月05日 13时13分38秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  陆唯一 (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "kernel.h"
#include "elf.h"

int pid = 1;

hlist_head hashtb[HASH_NUMBER];

void
loadcode(struct ELFHeader* elf){
    struct ProgramHeader *ph , *eph;
    unsigned char *pa ;
    unsigned int off;

    ph = (struct ProgramHeader *)((char *)elf + elf->phoff);
    eph = ph + elf->phnum;

    for ( ; ph < eph ; ph++ ){
        printk("vaddr:%x filesz:%x memsz:%x\n",ph->vaddr,ph->filesz,ph->memsz);
        memset((void *)(ph->vaddr + ph->filesz) , 0 , ph->memsz - ph->filesz);
        for (pa = (unsigned char *)ph->vaddr , off = ph->off ; 
                pa < (unsigned char *)(ph->vaddr + ph->filesz) ; pa++ , off++  ){
            *pa = *(unsigned char *)((unsigned char *)elf + off);
        }
    }
}

PCB *
create_uprocess(struct ELFHeader* elf){
    PCB *kt = (PCB *)malloc(sizeof(PCB));
    assert(kt != NULL);

    kt->updir = get_free_pdir();//alloc user address space
    alloc_address(kt->updir);
	set_cr3((void*)va_to_pa(kt->updir));  // set PDBR(CR3)
    
    loadcode(elf);

    kt->lock_count = 0;
    kt->pid = pid++;
    assert(pid > 0);
    TrapFrame *tf = ((TrapFrame *)(kt->kstack + KSTACK_SIZE) - 1);
    kt->tf = tf;
    tf->edi = tf->esi = tf->ebp = tf->ebx = tf->edx = tf->ecx = tf->eax = 0;
    tf->ds = tf->es = USEL(SEG_UDATA);
    tf->eip = (uint32_t) elf->entry;
    tf->cs = USEL(SEG_UCODE);
    tf->ss = USEL(SEG_UDATA);
    tf->esp = 0x08090000;
    tf->eflags = 0 | FL_IF;
    new_sem(&kt->message , 0);
    kt->message_addr = NULL;
    Process_Info *pi = add_hash_element(kt->pid);
    pi->pcb = kt;
    pi->wait_for_pid = 0;
    list_init(&pi->message_list);
    kt->user_process = TRUE;
    return kt;
}

PCB *
create_kthread(void *entry){
    PCB *kt = (PCB *)malloc(sizeof(PCB));
    assert(kt != NULL);
    kt->lock_count = 0;
    kt->pid = pid++;
    assert(pid > 0);
    TrapFrame *tf = ((TrapFrame *)(kt->kstack + KSTACK_SIZE) - 1);
    kt->tf = tf;
    tf->edi = tf->esi = tf->ebp = tf->ebx = tf->edx = tf->ecx = tf->eax = 0;
    tf->ds = tf->es = KSEL(SEG_KDATA);
    tf->eip = (uint32_t) entry;
    tf->cs = KSEL(SEG_KCODE);
    tf->eflags = 0 | FL_IF;
    new_sem(&kt->message , 0);
    kt->message_addr = NULL;
    Process_Info *pi = add_hash_element(kt->pid);
    pi->pcb = kt;
    pi->wait_for_pid = 0;
    list_init(&pi->message_list);
    kt->user_process = FALSE;
    return kt;
}

void
wakeup(PCB *pcb_to_wake){
    list_add_after(&runq , &pcb_to_wake->semq); 
}

void
sleep(void){
   list_del(&current_pcb->semq);
   asm volatile("int $0x80");
}

