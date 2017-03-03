//
//  main.c
//  Problem1
//
//  Created by AiYamamoto on 2017-01-28.
//  Copyright © 2017 CICCC. All rights reserved.
//

// a) Write a function called swap, which, takes two chars as input, and swap their values.
// b) What is the signature of the function?  -->void swap(char a,char b);
// c) What would be the return type of the function?  -->void
// d) How would you call the function inside your main function? Provide an example. -->swap(a,b);
    
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
