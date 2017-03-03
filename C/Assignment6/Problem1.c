//
//  main.c
//  Problem1
//
//  Created by AiYamamoto on 2017-01-25.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void func(void);
void pointer(int *number1,int *number2);

int main(int argc, const char * argv[]) {
    // insert code here...
    func();
    int num1 = 30;
    int num2 = 50;
    printf("num1 = %d num2 = %d\n",num1,num2);
    pointer(&num1,&num2);
    printf("num1 = %d num2 = %d\n",num1,num2);
    return 0;
}

void func(void){
    int num = 10;
    char cha = 'a';
    long numLong = 20;
    float numFloat = 0.5;
 
    int* num1 = &num;
    char* cha1 = &cha;
    long* numLong1 = &numLong;
    float* numFloat1 = &numFloat;
    
    printf("%d %p\n",*num1,&num1);
    printf("%c %p\n",*cha1,&cha1);
    printf("%ld %p\n",*numLong1,&numLong1);
    printf("%0.1f %p\n",*numFloat1,&numFloat1);
}

void pointer(int *number1,int *number2){
    *number1 = *number1 + 2;
    *number2 = *number2 + 3;
}
