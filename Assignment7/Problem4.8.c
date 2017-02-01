//
//  main.c
//  Problem4.8
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.8 What is the output of this C code?

#include <stdio.h>
struct point
{
    int x;
    int y;
};
void foo(struct point*);
int main()
{
    struct point p1[] = {1, 2, 3, 4};
    foo(p1);
}
void foo(struct point p[])
{
    printf("%d\n", p[1].x);
}

//a) Compile time error
//b) 3 -->
//c) 2
//d) 1
