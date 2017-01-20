//
//  main.c
//  Problem3
//
//  Created by AiYamamoto on 2017-01-19.
//  Copyright © 2017 CICCC. All rights reserved.
//
//Write a function for problem 3 of the assignment 1.
//The function will takes one integer between 5and 10 and will print the following pattern:
//xample: for counter = 4
//****
//***
//**
//*

#include <stdio.h>
#include <stdlib.h>
#include "time.h"
unsigned getRandInterval(unsigned begin, unsigned end);
void printPattern(long counter);
int main(int argc, const char * argv[]) {
    // insert code here...
    srand((unsigned)(time(NULL)));
    long counter = getRandInterval(5, 10);
    printPattern(counter);
    return 0;
}

unsigned getRandInterval(unsigned begin, unsigned end)
{
    unsigned range = (end - begin) + 1;
    unsigned limit = (RAND_MAX) -((RAND_MAX) % range);
    unsigned randVal = rand();
    while(randVal >= limit){
        randVal = rand();
    }
    return(randVal % range) + begin;
}

void printPattern(long counter)
{
    printf("Counter = %ld\n", counter);
    for(long i = counter; i > 0; i--){
        for(int j = 0; j < i; j++){
            printf("*");
        }
        printf("\n");
    }
}
