//
//  main.c
//  Assignment2
//
//  Created by 山本藍 on 2017-01-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include "time.h"
unsigned getRandInterval(unsigned begin, unsigned end);
int main(int argc, const char * argv[]) {
    // insert code here...
    srand((unsigned)(time(NULL)));
    long counter = getRandInterval(4, 11);
    printf("Counter = %ld\n", counter);
    for(long i = 0; i < counter; i++){
        for(int j = 0; j < i + 1; j++){
            printf("*");
        }
        printf("\n");
    }
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
