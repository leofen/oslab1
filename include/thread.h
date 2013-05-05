#ifndef __THREAD_H_
#define __THREAD_H_

#include "x86.h"
#include "common.h"
#include "adt/list.h"
#include "process.h"

PCB *creat_kthread(void *entry);
void sleep(void);
void wakeup(PCB *pcb_to_wake);
void lock(void);
void unlock(void);

#endif
