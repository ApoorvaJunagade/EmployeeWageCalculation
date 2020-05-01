#! /bin/bash

wagePerHour=20
dayHour=8
dailyWage=$(( $wagePerHour*$dayHour ))
	ispresent=1
	status=$(( $RANDOM%2 ))
	if [ $status -eq $ispresent ]
	then
 	echo "employee is present"
	echo "employee earned Rs" $dailyWage
	else
 	echo "employee is absent"
        fi
