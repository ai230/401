//
//  main.c
//  Problem2
//
//  Created by AiYamamoto on 2017-01-25.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    char word1[] = "Hello";
    char* word2 = "World";
    
    printf("word1 is %s\n",word1);
    printf("word2 is %s\n",word2);
    //The output is
    //word1 is Hello
    //word2 is World
    
    word2 = "I am not world";
    printf("word1 is %s\n",word1);
    printf("word2 is %s\n",word2);
    //The output is
    //word1 is Hello
    //word2 is I am not world
    
    word2 = word1;
    printf("word1 is %s\n",word1);
    printf("word2 is %s\n",word2);
    //The output is
    //word1 is Hello
    //word2 is Hello
    
//    word1 = word2;
    printf("word1 is %s\n",word1);
    printf("word2 is %s\n",word2);
    //errer because word1 is char and not pointer

    return 0;
}
//-Pointer hold an address of array 
//-Pointer of char output not only 1 char
