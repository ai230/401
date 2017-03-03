//
//  main.c
//  Problem4.5
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.1 What is the output of this C code?

#include <stdio.h>
struct point
{
    int x;
    int y;
};
void foo(struct point*);
int main()
{
    struct point p1 = {1, 2};
    foo(&p1);
//    printf("%d ",p1.x);
//    printf("%d",p1.y);
}
void foo(struct point *p)
{
//    printf("%d\n", **p);
    printf("%p\n", **p->x++);
}

//a) Compile time error -->
//b) 1
//c) Segmentation fault/code crash
//d) 2
