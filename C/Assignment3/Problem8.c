//
//  main.c
//  Problem8
//
//  Created by AiYamamoto on 2017-01-20.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void oddOreven(int num);
void dividendOf3(int num);
void dividendOf7(int num);
void primeNum(int num);
int main(int argc, const char * argv[]) {
    // insert code here...
    int num;
    printf("Please input a number!\n");
    scanf("%d", &num);
    oddOreven(num);
    dividendOf3(num);
    dividendOf7(num);
    primeNum(num);
    return 0;
}

void oddOreven(int num){
    if(num % 2 == 0){
        printf("The number(%d) is even\n", num);
    }else{
        printf("The number(%d) is odd\n", num);
    }
}

void dividendOf3(int num){
    if(num % 3 == 0){
        printf("The number(%d) is dividend of 3\n", num);
    }else{
        printf("The number(%d) is not dividend of 3\n", num);
    }
}

void dividendOf7(int num){
    if(num % 7 == 0){
        printf("The number(%d) is dividend of 7\n", num);
    }else{
        printf("The number(%d) is not dividend of 7\n", num);
    }
}

void primeNum(int num){
    int i, result = 0;
    for(i = num-1; 1 < i; i--){
        if((num%i)==0) result = 1;
    }
    if(result == 0){
        printf("The number(%d) is prime number\n", num);
    }else{
        printf("The number(%d) is not prime number\n", num);
    }
}
