#include "kernel.h"
#include "x86.h"
#include "vm.h"
#include "irq.h"

#define NBUF 5
int buf[NBUF], f = 0, r = 0, g = 1, tid = 1;
Semaphore empty, full, mutex;


void
test_producer(void) {
    while (TRUE) {
        P(&empty);INTR;
        P(&mutex);INTR;
        buf[f ++] = g ++;INTR;
        f %= NBUF;INTR;
        V(&mutex);INTR;
        V(&full);INTR;
    }
}

void
test_consumer(void) {
    int id = tid ++;
    while (TRUE) {
        P(&full);INTR;
        P(&mutex);INTR;
        printk("#%d Got: %d\n", id, buf[r ++]);INTR;
        r %= NBUF;INTR;
        V(&mutex);INTR;
        V(&empty);INTR;
    }
}

void
test_setup(void) {
    new_sem(&full, 0);
    new_sem(&empty, NBUF);
    new_sem(&mutex, 1);
    wakeup(create_kthread(test_producer));
    wakeup(create_kthread(test_producer));
    wakeup(create_kthread(test_producer));
    wakeup(create_kthread(test_consumer));
    wakeup(create_kthread(test_consumer));
    wakeup(create_kthread(test_consumer));
    wakeup(create_kthread(test_consumer));
}


void
A(void){
    Message m;
    while(1){
        receive(ANY,&m);
        printk("A\n");
        send(2,&m);
    }
}

void
B(void){
    Message m;
    send(1,&m);
    while(1){
        receive(ANY,&m);
        printk("B\n");
        send(1,&m);
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
   // test_setup();
    wakeup(create_kthread(A));
    wakeup(create_kthread(B));
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

