#include "kernel.h"
#include "x86.h"
#include "vm.h"
#include "irq.h"

void
A(void){
    while(TRUE){
        printk("A");
        wait_intr();
    }
}

void
B(void){
    while(TRUE){
        printk("B");
        wait_intr();
    }
}

void
os_init(void) {
	init_seg();
	init_debug();
	init_idt();
	init_i8259();
    queue_init();
	printk("The OS is now working!\n");
    wakeup(create_kthread(A));
    wakeup(create_kthread(B));
    printk("interupt open\n");
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

