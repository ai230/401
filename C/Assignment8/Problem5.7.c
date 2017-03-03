//
//  main.c
//  Problem5.7
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
int main() {
    double *ptr = (double *)100;
    ptr = ptr + 2;
    printf("%u", ptr);
}

//a) 102
//b) 104
//c) 108
//d) 116 <--
