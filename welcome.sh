#! /bin/bash 
wagePerHour=20
isPartTime=1;
isFullTime=2;
isabsent=0;
i=0
emphrs=0
echo "welcome to employee wage calculation program"
while [ $emphrs -lt  100 ] && [ $i -lt  20 ]
do
empcheck=$(($RANDOM%3));
case $empcheck in
$isabsent)
	emphrs=0
	echo "the employee is absent"
	;;
$isFullTime)
	emphrs=$(( $emphrs+8))
	echo "employee is full time"
	salary=$(($salary+(($emphrs*$wagePerHour)) ))
	;;
$isPartTime)
	emphrs=$(($emphrs+4))
	echo "employee is part time"
	salary=$(($salary+(($emphrs*$wagePerHour)) ))
	;;
*)
	echo "salary cannot be calculated"
	;;
esac
i=$(( $i+1))
done

echo "total salary is" $salary



	
