//
//  main.c
//  Problem4
//
//  Created by AiYamamoto on 2017-01-20.
//  Copyright © 2017 CICCC. All rights reserved.
//
//Problem4-Write a function which works like a calculator for integers. It takes two numbers and operands 
//and one character as operator which could be either + or –or *or / or % and performs the operator the operation 
//and return the results. For instance: for 5, 6, + and then function will return 11 (which is 5+6)

#include <stdio.h>
int calculator(int num1, int num2, char ope);

int main(int argc, const char * argv[]) {
    // insert code here...
    int result = calculator(5, 6, '+');
    printf("result = %d\n", result);
    return 0;
}

int calculator(int num1, int num2, char ope)
{
    int sum;
    if(ope == '+'){
        sum = num1 + num2;
        return sum;
    }else if(ope == '-'){
        sum = num1 - num2;
        return sum;
    }else if(ope == '*'){
        sum = num1 * num2;
        return sum;
    }else if(ope == '/'){
        sum = num1 / num2;
        return sum;
    }else if(ope == '%'){
        sum = num1 % num2;
        return sum;
    }
    return 0;
}
