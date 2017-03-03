//
//  main.c
//  Problem4
//
//  Created by AiYamamoto on 2017-01-24.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
float MaxMin(float arr[]);

int main(int argc, const char * argv[]) {
    // insert code here...
    float arr[5];
    for(int i = 0; i < 5; i++){
        printf("Please enter 5 numbers! %d:", i);
        scanf("%f", &arr[i]);
    }
    float difference = MaxMin(arr);
    printf("The difference is %0.1f\n",difference);
    return 0;
}

float MaxMin(float arr[]){
    float max = arr[0], min = arr[0], difference;
    for(int i = 0; i < 5; i++){
        if(max < arr[i]) max = arr[i];
        if(min > arr[i]) min = arr[i];
    }
    printf("max=%0.1f min=%0.1f\n",max,min);
    difference = max - min;
    return difference;
}
