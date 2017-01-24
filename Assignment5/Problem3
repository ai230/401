//
//  main.c
//  Problem3
//
//  Created by AiYamamoto on 2017-01-24.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
int *copyArray(int *n);

int main(int argc, const char * argv[]) {
    // insert code here...
    int arr1[5],arr2[5];
    int *result;
    for(int i = 0; i < 5; i++){
        printf("Please enter 5 numbers! %d:", i);
        scanf("%d", &arr1[i]);
    }
    //Return only newArr[0]
    result = copyArray(arr1);
    printf("reslt = %d\n",*result);
    return 0;
}

int *copyArray(int *n){
    int newArr[5];
    for(int i = 0; i < 5; i++){
        newArr[i] = n[i];
    }
    for(int i = 0; i < 5; i++){
        printf("copyArr[i]=%d n=%d\n",newArr[i],n[i]);
    }
    return newArr;
}
