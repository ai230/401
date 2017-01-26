//
//  main.c
//  Problem5
//
//  Created by AiYamamoto on 2017-01-25.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void printName(void);
int charAtPosition(int position);

int main(int argc, const char * argv[]) {
    // insert code here...
    int num;
    printName();
    printf("Please enter a number:");
    scanf("%d",&num);
    char result = charAtPosition(num);
    printf("result = %c\n",result);
    return 0;
}

void printName(void){
    char* firstName = "AiYamamoto";
    for(int i = 0; i < 10; i++){
        printf("%c\n",firstName[i]);
    }
    printf("\n");
}

int charAtPosition(int position){
    char* firstName = "AiYamamoto";
    for(int i = 0; i < 10; i++){
        printf("%c\n",firstName[i]);
    }
    printf("\n");
    return firstName[position];
}
