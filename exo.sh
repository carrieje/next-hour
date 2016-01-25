#!/bin/bash

if [ $# -eq 3 ] && [ $1 -lt 24 ] && [ $2 -lt 60 ] && [ $3 -lt 60 ]  
then 
	if [ $3 -eq 59 ]
	then 
		if [ $2 -eq 59 ]
		then 
			if [ $1 -eq 23 ]
			then 
				a="00"
				b="00"
				c="00"
			else 
				a=`expr $1 + 1`
				b="00"
				c="00"
			fi
		else 
			a=$1
			b=`expr $2 + 1`
			c="00"
		fi
	else
		a=$1
		b=$2
		c=`expr $3 + 1`
	fi

	echo "il est : $a $b $c"	
elif [ $# -eq 3 ]
then 
	echo "Vos arguments sont mauvais"
else
	echo "Seuls 3 arguments sont autorisés"
fi
