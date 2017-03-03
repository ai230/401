//
//  main.c
//  Problem3
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

struct item
{
    int age;
    struct item* nextItem;
};
struct item* func(void);
int main(int argc, const char * argv[]) {
    struct item* result = func();
    printf("\nThis is the result\n");
    for(int i = 0; i < 10; i++)
    {
        printf("(%d)age is %d\n",i+1,result[i].age);
        printf("(%d)nextItem is %p\n",i+1,result[i].nextItem);
    }
    return 0;
}
struct item* func(void)
{
    int n = 0;
    struct item linkList[10];
    linkList[0].nextItem = &n;
    printf("Please enter 10 times of age!\n");
    for(int i = 0; i < 10; i++)
    {
        printf("%d:",i+1);
        scanf("%d",&linkList[i].age);
        if(i != 0)
        {
            linkList[i-1].nextItem = &linkList[i].age;
        }else if(i == sizeof(linkList)-1)
        {
            linkList[i].nextItem = &n;
        }
        
    }
    for(int i = 0; i < 10; i++){
        printf("(%d)age is %d\n",i+1,linkList[i].age);
        printf("(%d)nextItem is %p\n",i+1,linkList[i].nextItem);
        printf("(%d)address of age is %p\n",i+1,&linkList[i].age);
    }
    return linkList;
}
