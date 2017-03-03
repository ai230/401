//
//  main.c
//  Problem5.12
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
void main() {
    char *p = calloc(100, 1);
    p = "welcome";
    printf("%s\n", p);
}

//a) Segmentation fault
//b) Garbage
//c) Error
//d) welcome <--
