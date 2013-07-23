#ifndef __VM_H__
#define __VM_H__

#include "common.h"
#include "x86.h"

#define KOFFSET         0xC0000000
#define MEM_MAX         (128 * 1024 * 1024)

#define va_to_pa(addr)  (((uint32_t)(addr)) - KOFFSET)
#define pa_to_va(addr)  (((uint32_t)(addr)) + KOFFSET)

#define USER_MEM  0x01000000
#define USER_SIZE 0x00400000
#define USER_SUM  20

void init_kvm(void);
void init_seg(void);
uint32_t get_free_address(void);
PDE * get_free_pdir(void);
void alloc_address(PDE *user_pdir);

#endif
