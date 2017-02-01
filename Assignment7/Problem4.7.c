//
//  main.c
//  Problem4.7
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.7 What is the output of this C code?

#include <stdio.h>
struct student
{
    char *name;
};
void main()
{
    struct student s[2], r[2];
    s[1] = s[0] = "alan";
    printf("%s%s", s[0].name, s[1].name);
}

//a) alan alan
//b) Nothing
//c) Compile time error -->
//d) Varies
