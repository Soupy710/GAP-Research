#!/bin/bash
count=0
BRed='\033[1;31m'      
Green='\033[0;32m'      
Color_Off='\033[0m'  
Cyan='\033[0;36m'  
echo -n "Enter the number of vertices (power of 2): "
read pow
echo -n "Enter the number of iterations: "
read iter
echo -e "${Green}Running Valgrind. Please wait...${Color_Off}"
echo ""
valgrind --tool=cachegrind --log-file=output.txt ./bfs -g $pow -n iter > output1.txt
echo ""

echo -e "${Cyan}INSTRUCTION CACHE${Color_Off}"
echo "----------------------------------------------------"
temp1=$(cat output.txt | grep "I   refs:")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	
count=0
temp1=$(cat output.txt | grep "I1  misses:")
#echo "$temp1"
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""
temp1=$(cat output.txt | grep "I1  miss rate:")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	
echo ""
echo -e "${Cyan}DATA CACHE${Color_Off}"
echo "----------------------------------------------------"
temp1=$(cat output.txt | grep "D   refs:")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	

temp1=$(cat output.txt | grep "D1  misses:")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	

temp1=$(cat output.txt | grep "D1  miss rate:")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	
echo ""
echo -e "${Cyan}LAST LEVEL CACHE${Color_Off}"
echo "----------------------------------------------------"
temp1=$(cat output.txt | grep "LL refs:")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	

temp1=$(cat output.txt | grep "LL misses: ")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	

temp1=$(cat output.txt | grep "LL miss rate:")
count=0
for j in $temp1
do
	if [[ $count == 0 ]]
	then
		count=`expr $count + 1`
		continue
	fi	
	echo -n "$j "
done
echo ""	
echo "----------------------------------------------------"

sudo perf stat ./bfs -g 10 -n 1 > output.txt
cat output.txt | grep "Generate"
cat output.txt | grep "Build"
cat output.txt | grep "Average Time:"
echo -e "${Color_Off}"


