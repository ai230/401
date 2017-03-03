//
//  main.c
//  Problem1
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

int main(void) {
    int count = 0,num = 1,biggestNum = 0;
    int *numbers = NULL;
    numbers = (int *)malloc(sizeof(int));
    while(num > 0)
    {
        printf("Please enter a positive number(which are greater than 0)!\n");
        scanf("%d",&num);
        if (numbers == NULL) {
            printf("add memory\n");
        }
        if(num > 0)
        {
        numbers[count] = num;
        count++;
        }
    }
    if(num <= 0)
    {
        printf("You entered 0 or a negative number!\n");
    }
    biggestNum = numbers[0];
    for(int i = 0; i < count; i++)
    {
        printf("number[%d]=%d\n",i,numbers[i]);
        if(biggestNum < numbers[i])
        {
            biggestNum = numbers[i];
        }
    }
    printf("Biggest number is %d\n",biggestNum);
    return 0;
}
