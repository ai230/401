//
//  main.c
//  Problem3
//
//  Created by AiYamamoto on 2017-01-25.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    char word[] = "World";
    printf("The beginning address of the array is at address %p\n",word);
    printf("W is at address %p\n",&(word[0]));
    printf("O is at address %p\n",&(word[1]));
    printf("R is at address %p\n",&(word[2]));
    printf("L is at address %p\n",&(word[3]));
    printf("D is at address %p\n",&(word[4]));
    //The output:
    //The beginning address of the array is at address 0x7fff5fbff77a
    //W is at address 0x7fff5fbff77a
    //O is at address 0x7fff5fbff77b
    //R is at address 0x7fff5fbff77c
    //L is at address 0x7fff5fbff77d
    //D is at address 0x7fff5fbff77e
    
    int numbers[] = {10, 20, 30, 40};
    printf("The beginning address of the array is at address %p\n",numbers);
    printf("10is at address %p\n",&(numbers[0]));
    printf("20is at address %p\n",&(numbers[1]));
    printf("30is at address %p\n",&(numbers[2]));
    printf("40is at address %p\n",&(numbers[3]));
    //The beginning address of the array is at address 0x7fff5fbff770
    //10is at address 0x7fff5fbff770
    //20is at address 0x7fff5fbff774
    //30is at address 0x7fff5fbff778
    //40is at address 0x7fff5fbff77c
    return 0;
}
//& means address of the array
//char takes 1 byte int is takes byte
