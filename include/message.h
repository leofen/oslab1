#ifndef __MESSAGE_H_
#define __MESSAGE_H_

#include "types.h"
#include "pid_hash.h"
#include "adt/list.h"

#define ANY -1
#define MSG_SZ 80
#define MSG_HWINTR -2

extern boolean in_irq_handle;

typedef struct Message {
    int32_t type;
    pid_t src,dest;
    char payload[MSG_SZ];
} Message;

typedef struct Message_Node {
    Message message;
    ListHead sys_queue,pid_queue;
}Message_Node;

void send(pid_t dst , Message *m);
void receive(pid_t dst , Message *m);
boolean wait_message(pid_t pid);
ListHead * get_message_list(pid_t pid);
struct PCB * get_pcb(pid_t pid);

#endif
