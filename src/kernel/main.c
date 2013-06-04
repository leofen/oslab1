#include "kernel.h"
#include "x86.h"
#include "vm.h"
#include "irq.h"
#include "driver/hal.h"
#include "driver/term.h"
#include "driver/time.h"
#include "driver/tty.h"

void
idle(){
    while(1){
        wait_intr();
    }
}

void
echo() {
	static int tty = 1;
	char name[] = "tty*", buf[256];
    printk("init buf_addr %x\n",buf);
	Device *dev;
	lock();
	name[3] = '0' + (tty ++);
	unlock();
	while (1) {
		dev = hal_get(name);
		if (dev != NULL) {
			dev_write(dev, 0, name, 4);
			dev_write(dev, 0, "# ", 2);
			int i, nread = dev_read(dev, 0, buf, 255);
			buf[nread] = 0;
			for (i = 0; i < nread; i ++) {
				if (buf[i] >= 'a' && buf[i] <= 'z') {
					buf[i] += 'A' - 'a';
				}
			}
            printk("buf:%s\n",buf);
			dev_write(dev, 0, "Got: ", 5);
			dev_write(dev, 0, buf, nread);
			dev_write(dev, 0, "\n", 1);
		} else {
			printk("%s\n", name);
		}
	}
}

void
test() {
	int i;
	for (i = 0; i < NR_TTY; i ++) {
		wakeup(create_kthread(echo));
	}
}

void
os_init(void) {
    init_seg();
    init_debug();
    init_idt();
    init_i8259();
    queue_init();
    hashtb_init();
    printk("The OS is now working!\n");
    init_hal();
    init_timer();
    init_tty();
    wakeup(create_kthread(idle));
    PCB * p = create_kthread(ttyd);
    TTY = p->pid;
    wakeup(p);
    test();
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

