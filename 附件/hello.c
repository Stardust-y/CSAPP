﻿// 大作业的 hello.c 程序
// gcc -m64 -Og -no-pie -fno-PIC hello.c -o hello
// 程序运行过程中可以按键盘，如不停乱按，包括回车，Ctrl-Z，Ctrl-C等。
// 可以 运行 ps  jobs  pstree fg 等命令

#include <stdio.h>
#include <unistd.h> 
#include <stdlib.h>

int sleepsecs = 5.5;

int main(int argc,char *argv[]){
	int i;

	if(argc!=4){
		printf("Hello 1190201203 于鑫淼！\n");
		exit(1);
	}
	for(i=0;i<8;i++){
		printf("Hello %s %s\n",argv[1],argv[2]);
		sleep(sleepsecs);
	}
	getchar();
	return 0;
}
