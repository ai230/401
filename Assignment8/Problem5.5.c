//
//  main.c
//  Problem5.5
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
#define foo(x, y) #x #y
int main()
{
    printf("%s\n", foo(k, l));
    return 0;
}

//a) kl <--
//b) k l
//c) xy
//d) Compile time error
