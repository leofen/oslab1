/*
 * =====================================================================================
 *
 *       Filename:  pid_hash.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  2013年05月28日 20时47分58秒
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  陆唯一 (), 
 *   Organization:  
 *
 * =====================================================================================
 */

#include "pid_hash.h"


static inline int hash_func (int key){
    int a, b, p, m;
    a = 104;
    b = 52;
    p = 233;
    m = HASH_NUMBER;
    return ((a * key + b) % p) % m;
}

void hashtb_init(void){
    int i;
    for ( i = 0 ; i < HASH_NUMBER ; i ++ )
        INIT_HLIST_HEAD(&hashtb[i]);
}

Process_Info * add_hash_element(int key){
    P_Status *hptr = (P_Status *) malloc(sizeof(P_Status));
    assert(hptr != NULL);
    hptr->key = key;
    INIT_HLIST_NODE(&hptr->hash);
    hlist_add_head(&hptr->hash , &hashtb[hash_func(key)]);
    return &hptr->process_info;
}

Process_Info * get_value(int key){
    int position = hash_func(key);
    P_Status *p;
    hlist_node *np;
    hlist_for_each_entry(p , np , &hashtb[position] , hash){
        if (p->key == key)
            return &p->process_info;
    }
    return (Process_Info *)NULL;
}


