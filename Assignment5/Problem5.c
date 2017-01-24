//
//  main.c
//  Problem5
//
//  Created by AiYamamoto on 2017-01-24.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void countOddEven(int arr[]);

int main(int argc, const char * argv[]) {
    // insert code here...
    int arr[5];
    for(int i = 0; i < 5; i++){
        printf("Please enter 5 numbers! %d:", i);
        scanf("%d", &arr[i]);
    }
    countOddEven(arr);
    return 0;
}
void countOddEven(int arr[]){
    int countOdd = 0, countEven =0;
    for(int i = 0; i < 5; i++){
        if(arr[i] % 2 == 0){
            countEven++;
        }else{
            countOdd++;
        }
    }
    printf("countOdd = %d countEven = %d\n",countOdd,countEven);
}
