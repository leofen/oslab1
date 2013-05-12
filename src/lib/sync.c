/*
 * =====================================================================================
 *
 *       Filename:  sync.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013年05月11日 21时38分13秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  陆唯一 (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "kernel.h"

void
lock(void){
   cli();
   current_pcb->lock_count++;
}

void
unlock(void){
    assert(current_pcb->lock_count > 0);
    current_pcb->lock_count--;
    if (current_pcb->lock_count == 0)
        sti();
}

void
new_sem(Semaphore *sem , int value){
    sem->count = value;
    list_init(&sem->queue);
}

void
P(Semaphore *sem){
    lock();
    sem->count--;
    if(sem->count < 0){
        list_add_before(&sem->queue , &current_pcb->block);
        sleep();
    }
    unlock();
}

void
V(Semaphore *sem){
    lock();
    sem->count++;
    if(sem->count <= 0){
        assert(!list_empty(&sem->queue));
        PCB *pcb = list_entry(sem->queue.next , PCB , block);
        list_del(sem->queue.next);
        wakeup(pcb);
    }
    unlock();
}
