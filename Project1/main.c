//
//  main.c
//  how to read textdata
//
//  Created by AiYamamoto on 2017-02-02.
//  Copyright © 2017 CICCC. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void readFile(char* fileName);
int main(int argc, const char * argv[])
{
    char* fileName;
    fileName = "/Users/yamamotoai/Documents/C/Project1/how to read textdata/Accounts.txt";
    readFile(fileName);
    return 0;
}
void readFile(char* fileName)
{
    FILE *fp;
#include <stdio.h>
#include <stdlib.h>

void readFile(char* fileName);
void readIdPass(char* AccountInfo);
int main(int argc, const char * argv[])
{
    char* fileName;
    fileName = "/Users/yamamotoai/Documents/C/Project1/how to read textdata/Accounts.txt";
    readFile(fileName);
    return 0;
}
void readFile(char* fileName)
{
    FILE *fp;
    char AccountInfo[256];
    
    if ((fp = fopen(fileName, "r")) == NULL)
    {
        printf("file open error!!\n");
        exit(EXIT_FAILURE);
    }
    while (fgets(AccountInfo,256,fp) != NULL)
    {
        printf("%s",AccountInfo);
        readIdPass(AccountInfo);
    }
    fclose(fp);
}

void readIdPass(char* AccountInfo)
{
    char id[256];
    char pw[256];
    char idFind[] = "studentID:";
    char pwFind[] = "Pass:";
    if (strstr(AccountInfo,idFind) != NULL )//Look for a StudentID
    {
        int i=0;
        while(i==0)
        {
            static int count = 0;
            if(AccountInfo[count+13] == '\xe2')
            {
                i=1;
                count = 0;
                printf("ID:%s\n",id);
                break;
            }
            id[count] = AccountInfo[count+13];
            count++;
        }
    }
    if (strstr(AccountInfo,pwFind) != NULL )//Look for a Password
    {
        int i=0;
        while(i==0)
        {
            static int count=0;
            if(AccountInfo[count+8] == '\xe2')
            {
                i=1;
                count = 0;
                    printf("PW:%s\n",pw);
                break;
            }
            pw[count] = AccountInfo[count+8];
            count++;
        }
    }
}
