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

int pid = 0;

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
    tf->eflags = FL_TF | FL_IF;
    new_sema(&kt->message , 0);
    kt->message_addr = NULL;
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

