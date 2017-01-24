//
//  main.c
//  Problem6
//
//  Created by AiYamamoto on 2017-01-20.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
void swaps(int num1, int num2);

int main(int argc, const char * argv[]) {
    // insert code here...
    swaps(5, 10);
    return 0;
}

void swaps(int num1, int num2)
{
    printf("num1 = %d num2 = %d\n", num1, num2);
    int tmp;
    tmp = num1;
    num1 = num2;
    num2 = tmp;
    printf("num1 = %d num2 = %d\n", num1, num2);
}
