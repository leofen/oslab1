/*
 * =====================================================================================
 *
 *       Filename:  process.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013年05月04日 14时24分22秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  陆唯一 (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include "kernel.h"

PCB *current_pcb = NULL;
ListHead runq;

void
queue_init(void){
    list_init(&runq);
}

void
schedule(void){
    assert(!list_empty(&runq));
    ListHead *current_list = &current_pcb->semq;
    list_del(current_list);
    list_add_before(&runq , current_list);//place current run task to the end of runqueue
}

PCB *
next_process(void){
    assert(!list_empty(&runq));
    return list_entry( runq.next , PCB , semq);
}
