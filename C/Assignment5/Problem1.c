//
//  main.c
//  Problem1
//
//  Created by AiYamamoto on 2017-01-23.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void printArray(void);

int main(int argc, const char * argv[]) {
    // insert code here...
    printArray();
    return 0;
}

void printArray(void){
    int arr[5];
    for(int i = 0; i < 5; i++){
        printf("Please enter 5 numbers! %d:", i);
        scanf("%d", &arr[i]);
    }
    for(int i = 0; i < 5; i++){
        printf("array[%d] = %d\n",i,arr[i]);
    }
}
