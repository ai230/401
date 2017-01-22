//
//  main.c
//  Problem4.9
//
//  Created by AiYamamoto on 2017-01-21.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
#include <string.h>
void outputPattern1(char name[], int nameLength);
void outputPattern2(char name[], int nameLength);
int main(int argc, const char * argv[]) {
    // insert code here...
    //    char str[] = "DRAGON" "QUEST";
    //    printf("%s\n",str);
    char yourName[10];
    int i;
    printf("Please input your name! -->");
    scanf("%s",&yourName);
    for(i = 0; yourName[i] != '\0'; i++);
    printf("%s Length of your name is %d\n", yourName, i);
    outputPattern1(yourName, i);
    printf("\n");
    outputPattern2(yourName, i);
    return 0;
}

//1
void outputPattern1(char name[], int nameLength)
{
    printf("name = %s nameLength = %d\n", name, nameLength);
    int i;
    for(i=0; i < 7; i++){
        if(i == 0 || i == 6){
            for(int j = 0; j < 11; j++){
                printf("*");
            }
            printf("\n");
        }else if(1 <= i && i <= 5){
            for(int j = 0; j < 2; j++){
                printf("*");
            }
            if(i == 1){
                printf("Hello");
                for(int k = 0; k < 4; k++){
                    printf("*");
                }
                printf("\n");
            }else if(i == 2){
                printf("%s", name);
                for(int k = 0; k < 9 - nameLength; k++){//11 - length - 2
                    printf("*");
                }
                printf("\n");
            }else if(i == 3){
                printf("Welcome");
                for(int k = 0; k < 2; k++){
                    printf("*");
                }
                printf("\n");
            }else if(i == 4){
                printf("To");
                for(int k = 0; k < 7; k++){
                    printf("*");
                }
                printf("\n");
            }else if(i == 5){
                printf("CICCC");
                for(int k = 0; k < 4; k++){
                    printf("*");
                }
                printf("\n");
            }
        }
    }
}

//2
void outputPattern2(char name[], int nameLength)
{
    printf("name = %s nameLength = %d\n", name, nameLength);
    int i;
    for(i=0; i < 7; i++){
        if(i == 0 || i == 6){
            for(int j = 0; j < 11; j++){
                printf("*");
            }
            printf("\n");
        }else if(1 <= i && i <= 5){
            for(int j = 0; j < 1; j++){
                printf("*");
            }
            if(i == 1){
                printf(" Hello   ");
            }else if(i == 2){
                printf(" %s", name);
                for(int k = 0; k < 8 - nameLength; k++){//11 - length - 3
                    printf(" ");
                }
            }else if(i == 3){
                printf(" Welcome ");
            }else if(i == 4){
                printf(" To      ");
            }else if(i == 5){
                printf(" CICCC   ");
            }
        }if(1 <= i && i <= 5){
            for(int k = 0; k < 1; k++){
                printf("*");
            }
            printf("\n");
        }
    }
}
