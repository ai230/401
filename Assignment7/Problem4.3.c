//
//  main.c
//  Problem4.3
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.1 What is the output of this C code?

#include <stdio.h>
struct student
{
    char *name;
};
struct student s;
struct student fun(void)
{
    s.name = "newton";
    printf("%s\n", s.name);
    s.name = "alan";
    return s;
}
void main()
{
    struct student m = fun();
    printf("%s\n", m.name);
    m.name = "turing";
    printf("%s\n", s.name);
}

//a) newton alan alan --> correct
//b) alan newton alan
//c) alan alan newton
//d) Compile time error
