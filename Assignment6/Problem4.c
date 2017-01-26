//
//  main.c
//  Problem4
//
//  Created by AiYamamoto on 2017-01-25.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int numbers[5] = {10,30,50,60,70};
    for(int i = 0; i < 5; i++){
        printf("%d\n",*(&numbers[i]));
    }
    return 0;
}
