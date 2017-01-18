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
    long counter = getRandInterval(0, 100);
    long counter1;
    long counter2;
    printf("Counter = %ld\n", counter);
    counter1 = counter;
    counter2 = counter;
    if(counter1 % 2 == 0){
        printf("even\n");
        for(int i = 0; i < 10; i++){
            counter1 = counter1 + 2;
            printf("%ld\n",counter1);
        }
    }else{
        printf("not even\n");
        counter2++;
        printf("%ld\n",counter2);
        for(int i = 0; i < 9; i++){
            counter2 = counter2 + 2;
            printf("%ld\n",counter2);
        }
    }
    printf("\n\n");
    for(int i = 0; counter2 <= 200; i++){
        counter2++;
        printf("%ld\n",counter2);
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
