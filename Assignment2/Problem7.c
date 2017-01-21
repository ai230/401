//
//  main.c
//  Problem6
//
//  Created by AiYamamoto on 2017-01-20.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
int isPrime(int num);

int main(int argc, const char * argv[]) {
    // insert code here...
    int num1 = 2;
    int num2 = 10;
    for(int i = num1 + 1; i < num2; i++){
        int prime = isPrime(i);
         if(prime != 0) printf("%d\n",prime);
    }
    return 0;
}

int isPrime(int num)
{
    int i, result = 0;
    int prime;
    for(i = num-1; 1 < i; i--){
        if((num%i)==0) result = 1;
    }
    if(result == 0){
        prime = num;
    }
    return prime;
}
