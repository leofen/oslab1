#ifndef __MESSAGE_H_
#define __MESSAGE_H_

#include "types.h"
#include "pid_hash.h"
#include "adt/list.h"

#define ANY -1
#define MSG_SZ 80

typedef struct Message {
    int32_t type;
    pid_t src,dest;
    char payload[MSG_SZ];
} Message;

typedef struct Message_Node {
    Message message;
    ListHead sys_queue,pid_queue;
}Message_Node;

extern ListHead sys_message_list;

void message_init(void);
void send(pid_t dst , Message *m);
void receive(pid_t dst , Message *m);
boolean wait_message(pid_t pid);
boolean have_message(pid_t pid);
struct PCB * get_pcb(pid_t pid);

#endif
