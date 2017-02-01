//
//  main.c
//  Problem4.2
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.1 What is the output of this C code?
#include <stdio.h>
struct p {
    int k; char c; float f;
};
int p=10;
int main() {
    struct p x = {1, 97};
    printf("%f %d\n", x.f, p);
}
//
//a) Compile time error
//b) 0.000000 10 --> correct
//c) Somegarbage value 10 d) 0 10
