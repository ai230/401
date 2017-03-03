//
//  main.c
//  Problem2
//
//  Created by AiYamamoto on 2017-01-19.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
int return2Num(int num1, int num2);
int returnBiggerNum(int num1, int num2);

int main(int argc, const char * argv[]) {
    // insert code here...
    int result1 = return2Num(10, 20);
    printf("result1 = %d\n",result1);
    int result2 = returnBiggerNum(10, 20);
    printf("result2 = %d\n",result2);
    return 0;
}

//Write a function which takes two integer numbers and returns the sum of two numbers
int return2Num(int num1, int num2)
{
    int sum = num1 + num2;
    return sum;
}

//Write a function which takes two integer and returns the one which is bigger than the other one. If they are equal the function will return one of them
int returnBiggerNum(int num1, int num2)
{
    if(num1 < num2){
        return num2;
    }else{
        return num1;
    }
}
