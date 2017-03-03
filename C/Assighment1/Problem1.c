//
//  main.c
//  Assighment1
//
//  Created by 山本藍 on 2017-01-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int index = 0;
    
    //Without using a “for-loop”, print the first 10 even number that are bigger than index.
    printf("2 ");
    printf("4 ");
    printf("6 ");
    printf("8 ");
    printf("10 ");
    printf("12 ");
    printf("14 ");
    printf("16 ");
    printf("18 ");
    printf("20 ");
    
    printf("\n\n");
    //Using a “for-loop”, print the first 10 even number that are bigger than index.
    for(int i = 0; i < 10; i++){
        index = index + 2;
        printf("%d\n",num);
    }
    
    printf("\n");
    
    //Print all even numbers which are bigger than the index and less than 200
    for(int i = 0; num < 200; i++){
        num = num + 2;
        printf("%d\n",num);
    }
    return 0;
}
