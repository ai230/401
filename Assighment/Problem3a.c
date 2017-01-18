//
//  main.c
//  Assignment3ex
//
//  Created by 山本藍 on 2017-01-17.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    //1
    int age;
    printf("What is your age?");
    scanf("%d",&age);
    printf("your age is %d\n", age);
    
    if(age<20){
        printf("your age is less than 20\n");
    }else{
        printf("your age is greater than or equal 20\n");
    }
    //2
    int gender;
    printf("If you are a girl enter 1, if a boy enter 2:");
    scanf("%d",&gender);
    
    if(gender == 1){
        printf("Emily\n");
    }else{
        printf("Jim\n");
    }
    //3
    int num1;
    printf("Please enter a number between 0 and 9999:");
    scanf("%d",&num1);
    int digits = 0;
    while(num1 > 0){
        num1 = num1 / 10;
        digits++;
    }
    printf("%d digits\n",digits);
    //4
    int num2;
    printf("Please enter a number between 0 and 200:");
    scanf("%d",&num2);
    if(num2 > 200){;
        printf("Your number is bigger than 200");
    }else if(0 < num2 || num2 >= 200){
        if(num2 % 2 != 0){
            
            printf("The number is odd\n");
        }else{
            printf("The number is even\n");
        }
    }
    int i;
    
    printf("引数の総個数 = %d\n", argc);
    for (i = 0; i < argc; i++) {
        printf("%d番目の引数 = %s\n", i, argv[i]);
    }
}
