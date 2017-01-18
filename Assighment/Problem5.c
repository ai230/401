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
    long counter = getRandInterval(10, 10);
    printf("Counter = %ld\n", counter);
    if(counter % 2 == 0){
        printf("even\n");
        for(int space = 0; space < counter/2; space++){
                printf("+");
        }
        printf("\n");
//        for(int i = container; i < 0; i=i-2){
//            printf("*");
//        }
    }else{
        printf("not even\n");
        counter++;
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
