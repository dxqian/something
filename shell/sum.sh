#!/bin/bash
#求一行数字之和，数字之间空格隔开
#如:
#1 2 3 4 5
awk '{ for(i=1;i<=NF;i++) sum=sum+i;print sum}' target.txt
