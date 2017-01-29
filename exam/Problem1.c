//
//  main.c
//  Problem1
//
//  Created by AiYamamoto on 2017-01-28.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void swap(char a,char b);

int main(int argc, const char * argv[]) {
    // insert code here...
    char a='A',b='B';
    printf("a=%c b=%c\n",a,b);
    swap(a,b);
    return 0;
}
void swap(char a,char b){
    char tmp;
    tmp=a;
    a=b;
    b=tmp;
    printf("a=%c b=%c\n",a,b);
}
