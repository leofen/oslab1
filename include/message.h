#ifndef __MESSAGE_H_
#define __MESSAGE_H_

#include "types.h"
#include "pid_hash.h"

#define ANY -1
#define MSG_SZ 80

typedef struct Message {
    int32_t type;
    pid_t src,dest;
    char payload[MSG_SZ];
} Message;

void send(pid_t dst , Message *m);
void receive(pid_t dst , Message *m);


#endif
