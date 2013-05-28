/*
 * =====================================================================================
 *
 *       Filename:  message.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013年05月13日 02时58分07秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  陆唯一 (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include "kernel.h"

ListHead sys_message_list;

void message_init(void){
    list_init(&sys_message_list);
}

void
send(pid_t dst , Message *m){
    assert(dst > 0);
    lock();
    if (wait_message(dst) == TRUE){//process dst are waiting for message
        Process_Info *pi = get_value(dst);
        pi->wait_for_pid = 0;
        PCB * receiver = pi->pcb;
        receiver->message_addr->dest = dst;
        receiver->message_addr->src = current_pcb->pid;
        receiver->message_addr->type = m->type;
        memcpy((void *)receiver->message_addr->payload , (void *)m->payload , MSG_SZ );
        V(&receiver->message);
    } else {
        Message_Node *new_message = (Message_Node *)malloc(sizeof(Message_Node));
        assert(new_message != NULL);
        new_message->message.dest = dst;
        new_message->message.src = current_pcb->pid;
        new_message->message.type = m->type;
        memcpy(new_message->message.payload , m->payload , MSG_SZ);
        list_add_after(&sys_message_list , &new_message->sys_queue);
        Process_Info *pi = get_value(current_pcb->pid);
        list_add_after(&pi->message_list , &new_message->pid_queue);
    }
    unlock();
}

void
receive(pid_t dst , Message *m){
    assert(dst > 0 || dst == ANY);
    lock();
    if (dst > 0){
        if (have_message(dst) == TRUE){
            Process_Info *pi = get_value(dst);
            Message_Node *avail_message = list_entry(pi->message_list.next , Message_Node , pid_queue);
            m->dest = avail_message->message.dest;
            m->src = avail_message->message.src;
            m->type = avail_message->message.type;
            memcpy(m->payload , avail_message->message.payload , MSG_SZ);
            list_del(&avail_message->pid_queue);
            list_del(&avail_message->sys_queue);
            free(avail_message);
        } else {
            Process_Info *pi = get_value(current_pcb->pid);
            pi->wait_for_pid = dst;
            current_pcb->message_addr = m;
            P(&current_pcb->message);
        }
    } else {
        if (!list_empty(&sys_message_list)){
            Message_Node *avail_message = list_entry(sys_message_list.next , Message_Node , sys_queue);
            m->dest = avail_message->message.dest;
            m->src = avail_message->message.src;
            m->type = avail_message->message.type;
            memcpy(m->payload , avail_message->message.payload , MSG_SZ);
            list_del(&avail_message->pid_queue);
            list_del(&avail_message->sys_queue);
            free(avail_message);
        } else {
            Process_Info *pi = get_value(current_pcb->pid);
            pi->wait_for_pid = ANY;
            current_pcb->message_addr = m;
            P(&current_pcb->message);
        }
    }
    unlock();
}

boolean
have_message(pid_t pid){
    assert(pid > 0);
    Process_Info *pi = get_value(pid);
    return !list_empty(&pi->message_list);
}

boolean
wait_message(pid_t pid){
    assert(pid > 0);
    Process_Info *pi = get_value(pid);
    if (pi->wait_for_pid == current_pcb->pid || pi->wait_for_pid == ANY)
        return TRUE;
    return FALSE;
}

PCB *
get_pcb(pid_t pid){
    assert(pid > 0);
    Process_Info *pi = get_value(pid);
    return pi->pcb;
}
