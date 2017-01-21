//
//  main.c
//  Problem3
//
//  Created by AiYamamoto on 2017-01-19.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include "time.h"

unsigned getRandInterval(unsigned begin, unsigned end);
void printNums(int num1, int num2);
void printAveNums(int num1, int num2);

int main(int argc, const char * argv[]) {
    // insert code here...
    srand((unsigned)(time(NULL)));
    long num = getRandInterval(10, 15);
    printf("The randum number is %ld\n", num);
    printNums(10, 20);
    printAveNums(10, 20);
    return 0;
}

//Return the number of numbers between the two input numbers (excluding the input numbers)
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

//prints all numbers between these two input numbers
void printNums(int num1, int num2)
{
    printf("num1 is %d num2 is %d the numbers between them are \n", num1, num2);
    for(int i = num1; i < num2; i++){
        printf("%d\n",i);
    }
}
//prints the average of the numbers between the two input numbers
void printAveNums(int num1, int num2)
{
    float ave = (num1 + num2) / 2.0;
    printf("Average number is %0.1f\n", ave);
}
