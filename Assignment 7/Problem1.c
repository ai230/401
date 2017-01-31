//
//  main.c
//  Problem1
//
//  Created by AiYamamoto on 2017-01-30.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
struct date{
    int day,month,year;
}*dates;

struct machine{
    int name;
    char* memory;
}*mpu641;

struct time{
    int* day,month,year;
};

int main(void) {
    // insert code here..
    struct time* times;
    
    dates=(struct date*) malloc(sizeof(struct date));
    mpu641=(struct machine*) malloc(sizeof(struct machine));
    times=(struct time*) malloc(sizeof(struct time));
    
    dates->day=10;
    dates->month=3;
    dates->year=2017;
    char array[7]="CPUtype";
    
    mpu641->memory=array;
    mpu641->name=10;
    
    times->day=10;//address?
    
    struct time* sample[10];
    for(int i=0; i<10; i++){
        sample[i]=(struct time*) malloc(sizeof(struct time));
    }
    sample[2]->month=12;
    sample[0]->month=4;
    struct date** *ptrDates = &dates;
    struct machine** *ptrMpu641 = &mpu641;
    struct time** *ptrTimes = &times;
    
    printf("ptrDates=%d address=%p\n",**ptrDates,*ptrDates);
    printf("ptrMpu641=%d address=%p\n",**ptrMpu641,*ptrMpu641);
    printf("ptrTimes=%d address=%p\n",**ptrTimes,*ptrTimes);
    printf("\n");
    printf("dates->day=%d address=%p\n",dates->day,&dates->day);
    printf("dates->month=%d address=%p\n",dates->month,&dates->month);
    printf("dates->year=%d address=%p\n",dates->year,&dates->year);
    printf("\n");
    printf("mpu641->name=%d address=%p\n",mpu641->name,&mpu641->name);
    printf("mpu641->memory=%s address=%p\n",mpu641->memory,&mpu641->memory);
    printf("\n");
    printf("times->day=%d address=%p\n",times->day,&times->day);
    printf("times->month=%d address=%p\n",times->month,&times->month);
    printf("times->year=%d address=%p\n",times->year,&times->year);
    printf("\n");
    for(int i=0; i<10; i++){
        printf("sample[%d]->day=%d address=%p\n",i,sample[i]->day,&sample[i]->day);
        printf("sample[%d]->month=%d address=%p\n",i,sample[i]->month,&sample[i]->month);
        printf("sample[%d]->year=%d address=%p\n",i,sample[i]->year,&sample[i]->year);

    }
    ptrDates->day = 20;
    printf("dates->day=%d address=%p\n",dates->day,&dates->day);
    return 0;
}

