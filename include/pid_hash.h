#ifndef __PID_HASH_H_
#define __PID_HASH_H_

#include "assert.h"
#include "common.h"
#include "process.h"
#include "adt/list.h"
#include "message.h"
#include "malloc.h"

#define HASH_NUMBER 100

extern hlist_head hashtb[HASH_NUMBER];

typedef struct Process_Info{
    struct PCB *pcb;
    int wait_for_pid;//wait for the message of the process which pid stand for , -1 means aren't wait
    ListHead message_list;//the message this process has send but not be received
}Process_Info;

typedef struct P_Status{
    int key;//pid
    Process_Info process_info;
    hlist_node hash;
}P_Status;


void hashtb_init(void);

Process_Info * add_hash_element(int key);

Process_Info * get_value(int key);

#endif

