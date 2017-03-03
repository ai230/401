//
//  main.c
//  Problam4.9
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.9 What is the output of this C code?

#include <stdio.h>
struct p
{
    int x;
    int y;
};
void foo(struct p*);
int main()
{
    typedef struct p* q;
    struct p p1[] = {1, 92, 3, 94, 5, 96};
    foo(p1);
}
void foo(struct p* p1)
{
    q ptr1 = p1;
    printf("%d\n", ptr1->x);
}
//
//a) Compile time error -->
//b) 1
//c) Segmentation fault
//d) Undefined behaviour
