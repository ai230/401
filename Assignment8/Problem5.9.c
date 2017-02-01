//
//  main.c
//  Problem5.9
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
void main() {
    char *s = "hello";
    char *p = s;
    printf("%c\t%c", *(p + 1), s[1]);
}

//a) h e
//b) e l
//c) h h
//d) e e <--
