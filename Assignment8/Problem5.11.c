//
//  main.c
//  Problem5.11
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>

int main()
    {
        char a[2][6] = {"hello", "hi"};
        printf("%s", *a + 1);
        return 0;
    }

//a) hello
//b) hi
//c) ello
//d) ello hi
