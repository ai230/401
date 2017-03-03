//
//  main.c
//  Problem5.10
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
int main() {
    char *a[2] = {"hello", "hi"};
    printf("%d", sizeof(a));
    return 0;
}
//output 16
//a) 9
//b) 4
//c) 8
//d) 10
