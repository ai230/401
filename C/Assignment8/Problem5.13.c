//
//  main.c
//  Problem5.13
//
//  Created by AiYamamoto on 2017-02-01.
//  Copyright © 2017 CICCC. All rights reserved.
//
//For the following program, Which of the following should be used for freeing the memory allocated?

#include <stdio.h>
struct p {
    struct p *next;
    int x;
};
int main()
{
    struct p *p1 = (struct p*)malloc(sizeof(struct p));
    p1->x = 1;
    p1->next = (struct p*)malloc(sizeof(struct p));
    return 0;
}
//a) free(p1); free(p1->next)
//b) free(p1->next);free(p1);
//c) free(p1); <--?
//d) All of the mentioned
