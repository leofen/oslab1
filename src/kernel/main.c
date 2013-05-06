#include "kernel.h"
#include "x86.h"
#include "vm.h"
#include "irq.h"

void
os_init(void) {
	init_seg();
	init_debug();
	init_idt();
	init_i8259();
	printk("The OS is now working!\n");
    int *a = (int *)malloc(10*sizeof(int));
    int *b = (int *)malloc(10*sizeof(int));
    int *c = (int *)malloc(10*sizeof(int));
    printk("%x %x %x\n",a,b,c);
    while((c = (int *)malloc(sizeof(int))) != NULL)
        printk("%x\n",c);
	sti();
	while (TRUE) {
		wait_intr();
	}
}

void
entry(void) {
	init_kvm();
	void(*volatile next)(void) = os_init;
	asm volatile("addl %0, %%esp" : : ""(KOFFSET));
	next();
	panic("init code should never return");
}

