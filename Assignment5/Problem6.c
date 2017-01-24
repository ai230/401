//
//  main.c
//  Problem6
//
//  Created by AiYamamoto on 2017-01-24.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
int findNum(int arr[], int num);

int main(int argc, const char * argv[]) {
    // insert code here...
    int arr[5], num = 0, result = 0;
    for(int i = 0; i < 5; i++){
        printf("Please enter 5 numbers! %d:", i);
        scanf("%d", &arr[i]);
    }
    printf("Please enter a number!:");
    scanf("%d", &num);
    result = findNum(arr,num);
    if(result == -1){
        printf("Return value = %d.There is no %d in the array!",result, num);
    }else{
        printf("Return value = %d.The number %d is in the array!",result, num);
    }
    return 0;
}
int findNum(int arr[], int num){
    int result = 0;
    for(int i = 0; i < 5; i++){
        if(arr[i] == num){
            result = 1;
        }else{
            result = 0;
        }
    }
    if(result == 1){
        return num;
    }else{
        return -1;
    }
}
