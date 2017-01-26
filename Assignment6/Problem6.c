//
//  main.c
//  Problem6
//
//  Created by AiYamamoto on 2017-01-26.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void swap(int *number1,int *number2);

int main(int argc, const char * argv[]) {
    // insert code here...
    int num1 = 10;
    int num2 = 20;
    printf("num1 = %d num2 = %d\n",num1,num2);
    swap(&num1,&num2);
    printf("num1 = %d num2 = %d\n",num1,num2);
    return 0;
}

void swap(int *number1,int *number2){
    int* tmp = *number1;
    *number1 = *number2;
    *number2 = tmp;
}

