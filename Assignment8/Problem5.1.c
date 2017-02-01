//
//  main.c
//  Problem5.1
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//What is the output of this C code?

#include <stdio.h>
void m();
int main(int argc, const char * argv[]) {
    m();
    m();
}
void m()
{
    static int x = 5;
    x++;
    printf("%d",x);
}

//a) 6 7 <--
//b) 6 6
//c) 5 5
//d) 5 6
