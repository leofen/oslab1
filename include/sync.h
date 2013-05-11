#ifndef __SYNC_H_
#define __SYNC_H_

#include "common.h"
#include "x86.h"
#include "adt/list.h"

typedef struct Semaphore {
    int32_t count;
    ListHead queue;
} Semaphore ;

void new_sem (Semaphore * sem , int value);
void P(Semaphore * sem);
void V(Semaphore * sem);

void lock(void);
void unlock(void);

#endif
