#!/bin/sh
INPUT_INT=0
read INPUT_INT #int 
if [ "$INPUT_INT" -eq "0" ];then #if statement
  echo "Your numer isn't good enough" 
else 
	echo "Your number is OK"
fi
for i in `seq $INPUT_INT 10`
do
	echo "$i I love programming"
done
g++ HelloWorld.cpp -o cpp.out
./cpp.out #run my compiled code 
echo 
echo "Pick some int"
read INPUT_INT
case $INPUT_INT in
	1)
		echo "Its a nice number"
		;;

	2)
		echo "It's a prime number"
		;;
	*) 
		echo "I don't know what to say about your number"	
		echo "Do you want me to factor this numer?(y/n)"
		DO_YOU="n"
		read DO_YOU
		if [ "$DO_YOU" == "y" ];then 
			echo "OK"
			factor $INPUT_INT
		else 
			echo "Fine"
		fi
		;;
		
	esac

