//
//  main.c
//  Problem4.4
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//4.1 What is the output of this C code?

#include <stdio.h>
struct temp {
int a;
}s;
void func(struct temp s){
    s.a = 10;
    printf("%d\t", s.a);
}
main() {
    func(s);
    printf("%d\t", s.a);
}

//a) 10 (Garbage Value)
//b) 0 10
//c) 10 0 --> correct
//d) (Garbage Value) 10
