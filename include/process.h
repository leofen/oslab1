#ifndef __PROCESS_H_
#define __PROCESS_H_

#include "x86.h"
#include "common.h"
#include "adt/list.h"

#define KSTACK_SIZE 8000

typedef struct PCB {
    TrapFrame *tf;
    ListHead semq;
    int32_t lock_count;
    uint8_t kstack[KSTACK_SIZE];
}PCB;

extern struct PCB *current_pcb;
extern ListHead runq;

void queue_init(void);
void schedule(void);
PCB * next_process(void);

#endif
