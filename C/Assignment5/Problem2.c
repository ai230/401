//
//  main.c
//  Problem2
//
//  Created by AiYamamoto on 2017-01-23.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void printChar(void);

int main(int argc, const char * argv[]) {
    // insert code here...
    printChar();
    return 0;
}

void printChar(void){
    char array[5];
    printf("Please input 5 chars\n");
    scanf("%s",&array);
    printf("Original order: ");
    for(int i = 0; i < 5; i++){
        printf("%c",array[i]);
    }
    printf("\n");
    printf("Reverse order: ");
    for(int j = 4; j >= 0; j--){
        printf("%c",array[j]);
    }
    printf("\n");
}
