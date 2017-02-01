//
//  main.c
//  Problem5.14
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
struct p
{
    struct p *next;
    int x;
};
int main()
{
    struct p *p1 = calloc(1, sizeof(struct p));
    p1->x = 1;
    p1->next = calloc(1, sizeof(struct p));
    printf("%d\n", p1->next->x);
    return 0;
}

//a) Compile time error
//b) 1
//c) Some garbage value
//d) 0 <--
