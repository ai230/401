//
//  main.c
//  Problem8
//
//  Created by AiYamamoto on 2017-01-24.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void findNum(int array[],int num);

int main(int argc, const char * argv[]) {
    // insert code here...
    int array[20],num;
    
    printf("Please enter 20 numbers!(Between 1 to 1000)\n");
    for(int i = 0; i < 20; i++){
        printf("(%d):", i+1);
        scanf("%d", &array[i]);
    }
    printf("Please enter a number!(Between 1 to 2000):");
    scanf("%d",&num);
    findNum(array,num);
    return 0;
}

void findNum(int array[],int num){
    int sum = 0,result = 0;
    int i,j;
    for(i = 0; i < 20; i++){
        for(j = i + 1; j < 20; j++){
        sum = array[i] + array[j];
            if(num == sum){
                result = 1;
                printf("find! array[%d]=%d + array[%d]=%d = %d\n",i,array[i],j,array[j],sum);
            }
        }
    }
    if(result == 0){
        printf("There is no %d from the array!\n",num);
    }
}
