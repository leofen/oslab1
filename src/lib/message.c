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
        list_add_after(get_msg_list(current_pcb->pid , dst) , &new_message->sys_queue);
        Process_Info *pi = get_value(dst);
        list_add_after(&pi->message_list , &new_message->pid_queue);
    }
    unlock();
}

void
receive(pid_t dst , Message *m){
    assert(dst > 0 || dst == ANY);
    lock();
    ListHead * msg_head = get_message_list(dst);
    if (!list_empty(msg_head)){
        Message_Node *avail_message;
        if (dst == ANY)
            avail_message = list_entry(msg_head->next , Message_Node , pid_queue);
        else
            avail_message = list_entry(msg_head->next , Message_Node , sys_queue);
        m->dest = avail_message->message.dest;
        m->src = avail_message->message.src;
        m->type = avail_message->message.type;
        memcpy(m->payload , avail_message->message.payload , MSG_SZ);
        list_del(&avail_message->pid_queue);
        list_del(&avail_message->sys_queue);
        free(avail_message);
    } else {
        Process_Info *pi = get_value(current_pcb->pid);
        assert(pi!=NULL);
        pi->wait_for_pid = dst;
        current_pcb->message_addr = m;
        P(&current_pcb->message);
    }
    unlock();
}

ListHead * get_message_list(pid_t pid){
    assert(pid > 0 || pid == ANY);
    if ( pid == ANY ){
        Process_Info *pi = get_value(current_pcb->pid);//get the message blocked in self queue
        return &pi->message_list;
    } else {
        return get_msg_list(pid , current_pcb->pid);
    }
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
