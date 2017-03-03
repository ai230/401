//
//  main.c
//  Problem3
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
//Look at the following snippet of code:
int n=10;
int a[n], i=0;
for(int i=0; i<n; i++) {
    a[i] = i+1; }
int* b = (int*) malloc (2*n*sizeof(int));
b = a;
