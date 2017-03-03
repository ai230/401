//
//  main.c
//  Problem7
//
//  Created by AiYamamoto on 2017-01-23.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void printArray(int array[]);
int sumArray(int array[]);
float aveArray(int array[]);
int biggestArray(int array[]);
int minimamArray(int array[]);
void showMenu(int array[]);
void showMenuOption(void);
int main(int argc, const char * argv[]) {
    // insert code here...
    int array[5];
    for(int i = 0; i < 5; i++){
        printf("Please enter the number! %d:", i);
        scanf("%d", &array[i]);
    }
    printArray(array);
    int sum = sumArray(array);
    printf("sum = %d\n",sum);
    int ave = aveArray(array);
    printf("ave = %d\n",ave);
    int biggest = biggestArray(array);
    printf("Biggest number = %d\n",biggest);
    int minimam = minimamArray(array);
    printf("Minimam number = %d\n",minimam);
    
    showMenu(array);
    
    return 0;
}

void printArray(int array[])
{
    for(int i = 0; i < 5; i++){
        printf("%d\n", array[i]);
    }
}

int sumArray(int array[])
{
    int sum = 0;
    for(int i = 0; i < 5; i++){
        sum += array[i];
    }
    printf("The sum of the numbers is %d\n", sum);
    return sum;
}

float aveArray(int array[])
{
    int sum = 0;
    for(int i = 0; i < 5; i++){
        sum += array[i];
    }
    float ave = sum/5;
    printf("The average of the numbers is %0.1f\n", ave);
    return ave;
}

int biggestArray(int array[])
{
    int biggest = array[0];
    for(int i = 0; i < 5; i++){
        if(biggest < array[i]){
            biggest = array[i];
        }
    }
    printf("The biggest number in the array is %d\n", biggest);
    return biggest;
}
int minimamArray(int array[])
{
    int minimam = array[0];
    for(int i = 0; i < 5; i++){
        if(minimam > array[i]){
            minimam = array[i];
        }
    }
    printf("The minimum number in the array is %d\n",minimam);
    return minimam;
}

void showMenu(int array[]){
    
    char input = '*';
    
    while(input != 'q'){
        showMenuOption();
        scanf(" %c",&input);
        if(input == 'p'){
            printArray(array);
        }else if(input == 'c'){
            sumArray(array);
        }else if(input == 'v'){
            aveArray(array);
        }else if(input == 'm'){
            minimamArray(array);
        }else if(input == 'x'){
            biggestArray(array);
        }else if(input == 'n'){
            for(int i = 0; i < 5; i++){
                printf("Please enter the number! %d:", i);
                scanf("%d", &array[i]);
            }
        }
    }
}

void showMenuOption(void){
    printf("\n====================================\n");
    printf("Please one of option\n");
    printf("====================================\n");
    printf("Printing the array [press 'p']\n");
    printf("Printing the sum of all numbers in the array [press ‘c’]\n");
    printf("Printing the average of the numbers in the array [press ‘v’]\n");
    printf("Printing the minimum number in the array [press ‘m’]\n");
    printf("Printing the maximum number in the array [press ‘x’]\n");
    printf("Exit and terminate [press ‘q’]\n");
    printf("Enter a new array [press ‘n’]\n");
    printf("====================================\n");
}
