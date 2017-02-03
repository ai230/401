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
    char AccountInfo[256];
    char id[7];
    char pw[256];
    char idFind[] = "studentID";
    char pwFind[] = "Pass";
    
    if ((fp = fopen(fileName, "r")) == NULL)
    {
        printf("file open error!!\n");
        exit(EXIT_FAILURE);
    }
    while (fgets(AccountInfo,256,fp) != NULL)
    {
        printf("%s",AccountInfo);
        if (strstr(AccountInfo,idFind) != NULL )//Look for a StudentID
        {
            printf("found id\n");
            int i=0;
            while(i==0)
            {
                static int count = 0;
                if(AccountInfo[count+13] == '\xe2')
                {
                    printf("F\n");
                    i=1;
                    break;
                }
                id[count] = AccountInfo[count+13];
                count++;
            }
        } else {
            printf("studentID was not found\n");
        }
        if (strstr(AccountInfo,pwFind) != NULL )//Look for a Password
        {
            printf("found pw\n");
            int i=0;
            while(i==0)
            {
                static int count=0;
                if(AccountInfo[count+8] == '\xe2')
                {
                    printf("F\n");
                    i=1;
                    break;
                }
                pw[count] = AccountInfo[count+8];
                count++;
            }
        } else {
            printf("PW was not found\n");
        }
    }
    fclose(fp);
}
