//
//  main.c
//  Problem5.4
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
#define foo(m, n) m ## n

int main(int argc, const char * argv[]) {
    printf("%s\n", foo(k, l));
    return 0;
}

//a) k l
//b) kl
//c) Compile time error  <--
//d) Undefined behaviour
