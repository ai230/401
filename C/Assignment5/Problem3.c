//
//  main.c
//  Problem3
//
//  Created by AiYamamoto on 2017-01-24.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
int *copyArray(int *n);
int newArr[5];//gloval scope because of return an array

int main(int argc, const char * argv[]) {
    // insert code here...
    int arr[5];
    for(int i = 0; i < 5; i++){
        printf("Please enter 5 numbers! %d:", i);
        scanf("%d", &arr[i]);
    }
    int *result = copyArray(arr);
    for(int i = 0; i < 5; i++){
        printf("reslt[%d] = %d\n",i,result[i]);
    }
    return 0;
}

int *copyArray(int array[]){
    for(int i = 0; i < 5; i++){
        newArr[i] = array[i];
    }
    for(int i = 0; i < 5; i++){
        printf("copyArr[%d]=%d array[%d]=%d\n",i,newArr[i],i,array[i]);
    }
    return newArr;
}
