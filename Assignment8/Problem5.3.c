//
//  main.c
//  Problem5.3
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
void func();
int main()
{
    static int b = 20;
    func();
}
void func()
{
    static int b;
    printf("%d", b);
}

//a) Output will be 0 <--
//b) Output will be 20
//c) Output will be a garbage value
//d) Compile time error due to redeclaration of static variable
