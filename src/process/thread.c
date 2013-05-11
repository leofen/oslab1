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

PCB *
create_kthread(void *entry){
    PCB *kt = (PCB *)malloc(sizeof(PCB));
    assert(kt != NULL);
    kt->lock_count = 0;
    TrapFrame *tf = ((TrapFrame *)(kt->kstack + KSTACK_SIZE) - 1);
    kt->tf = tf;
    tf->edi = tf->esi = tf->ebp = tf->ebx = tf->edx = tf->ecx = tf->eax = 0;
    tf->ds = tf->es = KSEL(SEG_KDATA);
    tf->eip = (uint32_t) entry;
    tf->cs = KSEL(SEG_KCODE);
    tf->eflags = 0 | FL_IF;
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

