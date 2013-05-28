/*
 * =====================================================================================
 *
 *       Filename:  hash_test.c
 *
 *    Description: 
 *
 *        Version:  1.0
 *        Created:  2013/05/28 14时40分20秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>
#include "hlist.h"

typedef struct p_status{
    int key;
    int value;
    hlist_node hash;
}p_status;

#define HASH_NUMBER 100

static inline int hash_func (int key){
    int a, b, p, m;
    a = 104;
    b = 52;
    p = 233;
    m = HASH_NUMBER;
    return ((a * key + b) % p) % m;
}

hlist_head hashtb[HASH_NUMBER];

void hashtb_init(void){
    int i;
    for ( i = 0 ; i < HASH_NUMBER ; i ++ ){
        INIT_HLIST_HEAD(&hashtb[i]);
    }
}

void add_hash_element(int key , int value){
    p_status *hptr = (p_status *) malloc(sizeof(p_status));
    hptr->key = key;
    hptr->value = value;
    INIT_HLIST_NODE(&hptr->hash);
    int position = hash_func(key);
    hlist_add_head(&hptr->hash , &hashtb[position]);
}

int get_value(int key){
    int position = hash_func(key);
    p_status *p;
    hlist_node *np;
    hlist_for_each_entry(p , np , &hashtb[position] , hash){
        if (p->key == key)
            return p->value;
    }
    return -1;
}

void hashtb_free(void){
    int i;
    p_status *p;
    hlist_node *np , *n;
    for ( i = 0 ; i < HASH_NUMBER ; i ++ ){
        hlist_for_each_entry_safe(p , np , n , &hashtb[i] , hash){
            free(p);
        }
    }
}

int
main ( int argc, char *argv[] )
{
    hashtb_init();
    add_hash_element(2,5);
    add_hash_element(235,6);
    printf("%d\n",get_value(2));
    printf("%d\n",get_value(235));
    hashtb_free();
    return EXIT_SUCCESS;
}				/* ----------  end of function main  ---------- */
