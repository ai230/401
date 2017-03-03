//
//  main.c
//  Problem5.8
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
int main() {
    int *p = (int *)2;
    int *q = (int *)3;
    printf("%d", p + q);
    return 0;
}

//a) 2
//b) 3
//c) 5
//d) Compile time error <--
