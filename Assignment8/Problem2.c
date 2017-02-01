//
//  main.c
//  Problem2
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//Transform the following piece of code to use only array notation (and index manipulation) such that there is no * and & notation in the code anymore.

//#include <stdio.h>
//int main (void) {
//    int arr[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
//    int *ptr = &arr[0];
//    while (ptr <= &arr[9])
//    {
//        printf("ptr points to %d\n", *ptr);
//        ptr++; // ptr now points to the next element }
//    }
//    return 0;
//}
#include <stdio.h>

int main (void) {
    int arr[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    for(int i = 0; i < 9; i++)
    {
        printf("ptr points to %d\n", arr[i]);
    }
    return 0;
}
