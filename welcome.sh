#! /bin/bash
echo "welcome to employee wage calculation program" 
wagePerHour=20
dayHour=8
isPorF=1;
	statusofPorF=$(( $RANDOM%2 ));
	if [ $statusofPorF -eq $isPorF ]
	then
 	echo "employee is part time"
	else 
	echo "employee is full time"
	fi
 	dailyWage=$(( $wagePerHour*$dayHour ))
	ispresent=1
	status=$(( $RANDOM%2 ))
	if [ $status -eq $ispresent ] &&  [ $statusofPorF -eq $isPorF ]
	then
 	echo "employee is present"
	echo "employee earned Rs" $dailyWage
	else
 	echo "employee is absent"
        fi
