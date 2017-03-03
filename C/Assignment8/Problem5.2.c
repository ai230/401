//
//  main.c
//  Problem5.2
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
void foo();
int main()
{
    foo();
    foo();
}
void foo()
{
    int i = 11;
    printf("%d ", i);
    static int j = 12;
    j = j + 1;
    printf("%d\n", j);
}

//a) 11 12 11 12
//b) 11 13 11 14 <--
//c) 11 12 11 13
//d) Compile time error
