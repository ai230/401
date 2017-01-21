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
void printPattern1(long counter);
void printPattern2(long counter);
void printPattern3(long counter);

int main(int argc, const char * argv[]) {
    // insert code here...
    srand((unsigned)(time(NULL)));
    long counter = getRandInterval(5, 10);
    printPattern1(counter);
    printf("\n");
    printPattern2(counter);
    printf("\n");
    printPattern3(counter);
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

//1
void printPattern1(long counter)
{
    printf("Counter = %ld\n", counter);
    for(long i = counter; i > 0; i--){
        for(int j = 0; j < i; j++){
            printf("*");
        }
        printf("\n");
    }
}

//2
void printPattern2(long counter)
{
    for(long i = 0; i < counter; i++){
        for(int j = 0; j < i + 1; j++){
            printf("*");
        }
        printf("\n");
    }
}

//3
void printPattern3(long counter)
{
    long i,k;
    for(i = counter; 0 <= i; i-=2){
        for(int j = 0; j < (counter - i)-j; j++){
            printf(" ");
        }
        for(k = 0; k <= i; k++){
            printf("*");
        }
        printf("\n");
    }
}
