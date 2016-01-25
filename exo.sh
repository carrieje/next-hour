#!/bin/bash

if [ $# -ne 3 ]
then
	echo "Seuls 3 arguments sont autorisés"
	exit 1
elif [ $1 -ge 24 ] || [ $2 -ge 60 ] || [ $3 -ge 60 ]
then
	echo "Vos arguments sont mauvais"
	exit 2
fi

if [ $3 -eq 59 ]
then
	if [ $2 -eq 59 ]
	then
		if [ $1 -eq 23 ]
		then
			h="00"
			m="00"
			s="00"
		else
			h=`expr $1 + 1`
			m="00"
			s="00"
		fi
	else
		h=$1
		m=`expr $2 + 1`
		s="00"
	fi
else
	h=$1
	m=$2
	s=`expr $3 + 1`
fi

echo "il est : $h $m $s"
