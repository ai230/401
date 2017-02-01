//
//  main.c
//  Problem4.1
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.1 What is the output of this C code?

#include <stdio.h>
struct student
{
    int no; = 5;
    char name[20];
};
void main()
{
    struct student s;
    s.no = 8;
    printf("hello");
}

//a) Nothing
//b) Compile time error <--
//c) hello
//d) Varies
