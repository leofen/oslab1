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

hlist_head hashtb_msg[HASH_NUMBER][HASH_NUMBER];

static inline int hash_func (int key){
    int a, b, p, m;
    a = 104;
    b = 52;
    p = 233;
    m = HASH_NUMBER;
    return ((a * key + b) % p) % m;
}

void hashtb_init(void){
    int i,j;
    for ( i = 0 ; i < HASH_NUMBER ; i ++ )
        INIT_HLIST_HEAD(&hashtb[i]);
    for ( i = 0 ; i < HASH_NUMBER ; i ++ )
        for ( j = 0 ; j < HASH_NUMBER ; j ++ )
            INIT_HLIST_HEAD(&hashtb_msg[i][j]);
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

ListHead * get_msg_list(int src , int dst){
    Msg_Status *p;
    hlist_node *np;
    hlist_for_each_entry(p , np , &hashtb_msg[hash_func(src)][hash_func(dst)] , hash){
        if (p->src == src && p->dst == dst)
            return &p->message_list;
    }
    //don't find , add element
    Msg_Status *mp = (Msg_Status *) malloc(sizeof(Msg_Status));
    assert(mp != NULL);
    mp->src = src;
    mp->dst = dst;
    list_init(&mp->message_list);
    hlist_add_head(&mp->hash , &hashtb_msg[hash_func(src)][hash_func(dst)]);
    return &mp->message_list;
}
