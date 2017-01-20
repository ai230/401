//
//  main.c
//  Problem5
//
//  Created by aiyamamoto on 2017-01-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include "time.h"
unsigned getRandInterval(unsigned begin, unsigned end);
int main(int argc, const char * argv[]) {
    // insert code here...
    srand((unsigned)(time(NULL)));
    long counter = getRandInterval(8, 14);
    printf("Counter = %ld\n", counter);
    if(counter % 2 != 0){
        printf("not even so +1\n");
        counter++;
        printf("Counter = %ld\n", counter);
    }
    
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
    return 0;
}

unsigned getRandInterval(unsigned begin, unsigned end)
{
    unsigned range = (end - begin) + 1;
    unsigned limit = (RAND_MAX) -((RAND_MAX) % range);
//        printf(RAND_MAX);
    unsigned randVal = rand();
    while(randVal >= limit){
        randVal = rand();
    }

    return(randVal % range) + begin;
}
