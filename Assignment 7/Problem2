//
//  main.c
//  Problem2
//
//  Created by AiYamamoto on 2017-01-31.
//  Copyright © 2017 CICCC. All rights reserved.
//
//

#include <stdio.h>
#include <math.h>

struct point{
    int x;
    int y;
};

double distance(struct point p1,struct point p2);
void printPoint(struct point p);
double average(struct point points[],char coord);
struct point averageVector(struct point points[]);

int main(int argc, const char * argv[]) {
    // insert code here...
    struct point point1 ={5,6}; //point1.x=5 pont1.y=6
    struct point point2 ={10,12};//point1.x=10 pont1.y=12
    //the function takes point1.x and point1.y and point2.x and point2.y
    double  dist = distance(point1,point2);//1
    printf("distance is %f\n",dist);
    //declare form points[0].x and point[0].y to points[4].x and point[4].y
    struct point points[5]={{1,2},{1,2},{1,2},{1,2},{1,2}};
    char n; //input x or y
    printf("Please input x or y!");
    scanf("%c",&n);
    //takes array of points and char of 'X' or 'Y'
    double ave=average(points,n);//2
    printf("average is %f\n",ave);
    struct point avePoints=averageVector(points);//takes array of points //3
    printPoint(avePoints);//4
    printf("\n");
    return 0;
}
double distance(struct point p1,struct point p2)//1
{
    double result=((p1.x-p2.x)*(p1.x-p2.x))+((p1.y-p2.y)*(p1.y-p2.y));
    double dist= sqrt(result);
    return dist;
}
//p1:(5,6)
//p2:(10,12)
//squr(((5-10)*(5-10))+((6-12)*(6-12)))
//=squr((-5*-5)+(-6*-6)) = squr(25)

double average(struct point points[],char coord)//2
{
    int sum=0,counter=0;
    for(int i=0; i<5; i++)
    {
        if(coord =='x')
        {
            sum=sum+points[i].x;
            counter++;
        }
        else{
            sum=sum+points[i].y;
            counter++;
        }
    }
    double ave=sum/counter;
    return ave;
}

void printPoint(struct point p)//4
{
    printf("the x coordination is %d and Y coodination is %d\n",p.x,p.y);
}

struct point averageVector(struct point points[])//3
{
    double avex = average(points,'x');
    double avey = average(points,'y');
    struct point avePoint={avex,avey};
    
    return avePoint;
}
