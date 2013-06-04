#include "x86.h"
#include "kernel.h"

Func_Pointer irq_array[2][10];
int array_index[2] = {0 , 0};
boolean need_sched = TRUE;

void irq_handle(TrapFrame *tf) {
	in_irq_handle = TRUE;
    int irq = tf->irq;
	assert(irq >= 0);

	if (irq < 1000 && irq != 128) {
		// exception
		cli();
		printk("Unexpected exception #%d\n", irq);
		printk(" errorcode %x\n", tf->err);
        printk(" location  %d:%x, esp %x\n", tf->cs, tf->eip, tf);
        panic("unexpected exception");
    } else if (irq >= 1000 || irq ==128) {
        if (current_pcb != NULL)
            current_pcb->tf = tf;
        switch (irq){
            case 1000:{
                          int i;
                          for ( i = 0 ; i < array_index[0] ; i++ )
                              irq_array[0][i]();
                          if (need_sched == TRUE){
                              schedule();
                              need_sched = FALSE;
                              current_pcb = next_process();
                          }
                          break;
                      }
            case 1001:{
                          int i;
                          for ( i = 0 ; i < array_index[1] ; i++ )
                              irq_array[1][i]();
                          break;
                      }
            case 128:{
                         schedule();
                         current_pcb = next_process();
                         break;
                     }
            default:break;
        }
    }
    UNINTR;
    in_irq_handle = FALSE;
}


void 
add_irq_handle(int irq , void (*handle) (void)){
    assert(irq == 0 || irq == 1);
    assert(array_index[0] < 9 && array_index[1] < 9);
    irq_array[irq][array_index[irq]++] = handle;
}
