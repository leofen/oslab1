#ifndef __KERNEL_H__
#define __KERNEL_H__

#include "common.h"
#include "debug.h"
#include "assert.h"
#include "process.h"
#include "irq.h"
#include "x86.h"
#include "vm.h"
#include "adt/list.h"
#include "thread.h"

void panic(const char *text);

#endif
