//
//  main.c
//  Problem4.10
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.10 What is the output of this C code?
#include <stdio.h>

struct student {
    char *c;
//    struct student point;
};

void main() {
    // insert code here...
    struct student s;
    s.c = "hello";
    printf("%s", s.c);
}

//a) hello
//b) Nothing
//c) Varies
//d) Compile time error
