//
//  main.c
//  Problem4.6
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.6 What is the output of this C code?

#include <stdio.h>
struct temp {
    int a;
    int b;
    int c;
}p[]={0};
main()
{
    printf("%d", sizeof(p));
}

//a) 4
//b) 12 -->
//c) 16
//d) Can’t be estimated due to ambigous initialization of array
