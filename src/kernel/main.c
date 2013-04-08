#include "kernel.h"
#include "x86.h"
#include "vm.h"
#include "irq.h"

void
os_init(void) {
    int len;
	init_seg();
	init_debug();
	init_idt();
	init_i8259();
	printk("The OS is now working!\n");
    len = printk("char test %c",'a');
    printk("  length is %d\n",len); 
    len = printk("string test %s","hello world");
    printk("  length is %d\n",len); 
    len = printk("string test %s","");
    printk("  length is %d\n",len); 
    len = printk("int test %d",-1234567);
    printk("  length is %d\n",len); 
    len = printk("int test %d",0);
    printk("  length is %d\n",len); 
    len = printk("HEX test %x",1234567);
    printk("  length is %d\n",len); 
    len = printk("HEX test %x",-1234567);
    printk("  length is %d\n",len);
    len = printk("mutitransform test %d %s %c %x",1234,"5678",'a',0x89);
    printk("  length is %d\n",len);
    printk("^__^            \n");
	printk("(oo)\\_______    \n");
	printk("(__)\\       )/\\/\n");
	printk("    ||----w |    \n");
	printk("    ||     ||    \n");
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

