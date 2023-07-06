#!/bin/bash

#function to check if the number is prime


prime(){
	num=$1
	if [ $num -lt 2 ]; then
		return 1
	fi
        	


	for ((i = 2; i < $num; i++)); do
		if ((num % i ==0)); then
			return 1
		fi
	done

        return 0


}

#main function
count=0
number=2
lim=$1

if [ -z  "$lim" ]; then  #defining the range
	echo "enter range"
	exit 1
fi





while [ $count -lt $lim ]; do
	if prime $number; then
		echo $number
		((count++))
	fi

        ((number++))
done

