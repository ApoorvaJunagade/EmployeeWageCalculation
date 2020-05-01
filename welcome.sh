#! /bin/bash 
wagePerHour=20
isPartTime=1;
isFullTime=2;
isabsent=0;
echo "welcome to employee wage calculation program"
for (( count=0; count<=20; count++ ))
do
empcheck=$(($RANDOM%3));
case $empcheck in
$isabsent)
	emphrs=0
	echo "the employee is absent"
	;;
$isFullTime)
	emphrs=8
	echo "employee is full time"
	salary=$(($salary+(($emphrs*$wagePerHour)) ))
	;;
$isPartTime)
	emphrs=4
	echo "employee is part time"
	salary=$(($salary+(($emphrs*$wagePerHour)) ))
	;;
*)
	echo "salary cannot be calculated"
	;;
esac
done

echo "total salary is" $salary



	
