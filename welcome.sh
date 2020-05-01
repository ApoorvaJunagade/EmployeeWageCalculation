#! /bin/bash 
wagePerHour=20
isPartTime=1;
isFullTime=2;
isabsent=0;
echo "welcome to employee wage calculation program"
empcheck=$(($RANDOM%3));
case $empcheck in
$isabsent)
	emphrs=0
	echo "the employee is absent";;
$isFullTime)
	emphrs=8
	echo "employee is full time"
	;;
$isPartTime)
	emphrs=4
	echo "employee is part time"
	;;
*)
	echo "salary cannot be calculated"
	;;
esac
salary=$(($emphrs*$wagePerHour));
echo "salary is" $salary
