/*
 * =====================================================================================
 *
 *       Filename:  malloc.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013年05月05日 16时19分43秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  陆唯一 (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "malloc.h"

#define num_page 100
#define sum_page_size 4095//1+2+4+8+......+2048
#define min_page 3

#define step(i) ((1<<((i)+3)) + sizeof(overhead))

static overhead * nextf[MAXBUCKET];
static uint32_t nmalloc[MAXBUCKET];
static boolean page_inited = FALSE;

/* prepared memery */
uint8_t pool[((sum_page_size << min_page) + MAXBUCKET * sizeof(overhead)) * num_page];

uint32_t
get_bucket(uint32_t x){
    assert(x > 0 && x <= (1 << (MAXBUCKET +2)));
    uint32_t n = 1;
    if ( x <= 8 ) return 0;
    if ( (x >> 16) == 0 ) { n = n + 16; x = x << 16;}
    if ( (x >> 24) == 0 ) { n = n +  8; x = x << 8 ;}
    if ( (x >> 28) == 0 ) { n = n +  4; x = x << 4 ;}
    if ( (x >> 30) == 0 ) { n = n +  2; x = x << 2 ;}
    n = n - ( x >> 31 );
    n = 31 - n;//get the highest digit of x
    return ((1 << n) == x)?(n - 3):(n - 2);
}

void
page_init(void){
    uint8_t *pa = pool;
    uint8_t *pa_perlevel;
    overhead *ov = (overhead *)pool;
    int i;
    for (i = 0 ; i < MAXBUCKET ; i++ ){
        pa_perlevel = pa;
        nextf[i] = (overhead *) pa_perlevel;
        nmalloc[i] = num_page;
        pa += step(i);
        for ( ; pa < pa_perlevel + step(i) * num_page ; pa += step(i) ){
            ov->ov_next = (overhead *)pa;
            ov = ov->ov_next;
        }
    }
}

void *
malloc(uint32_t nbyte){
    assert(nbyte > 0 && nbyte <= (1 << (MAXBUCKET + 2)));
    overhead *op = NULL;
    uint32_t bucket;

    if (page_inited == FALSE){//first malloc init page
        page_init();
        page_inited = TRUE;
    }

    bucket = get_bucket(nbyte);
    assert(bucket >= 0 && bucket < MAXBUCKET);
    if (nmalloc[bucket] == 0)
        return NULL;
    op = nextf[bucket];
    nmalloc[bucket]--;
    assert(op != NULL );
    nextf[bucket] = op->ov_next;

    op->ov_magic = MAGIC;
    op->ov_bucket = bucket;

    return (void *)(op + 1);
}

void
free(void * fp){
    uint32_t bucket;
    overhead * to_free = (overhead *)fp;
    to_free--;
    assert(to_free->ov_magic == MAGIC);//assert this memory is malloced
    bucket = to_free->ov_bucket;
    assert(nmalloc[bucket] < 100);
    nmalloc[bucket]++;
    to_free->ov_next = nextf[bucket];
    nextf[bucket] = to_free;
}
