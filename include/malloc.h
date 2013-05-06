#ifndef __MALLOC_H_
#define __MALLOC_H_

#include "common.h"
#include "x86.h"
#include "assert.h"

#define MAGIC 0xef
#define MAXBUCKET 12

#define ov_magic ovu.ovu_magic
#define ov_bucket ovu.ovu_bucket

typedef union overhead{
    union overhead * ov_next;
    struct{
       uint8_t  ovu_magic;
       uint32_t ovu_bucket ;
    }ovu;
}overhead;

void free(void *);
void *malloc(uint32_t);

#endif
