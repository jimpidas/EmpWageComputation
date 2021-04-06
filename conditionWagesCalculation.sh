#!/bin/bash -x
empWagePerHr=20
workingDayPerMonth=20
isFulltime=1
isParttime=2
empWorkingHrs=0
MaxHoursInMonth=100
totalWorkingDay=0
totalEmpHours=0
while [[ $totalEmpHours -lt $MaxHoursInMonth &&  $totalWorkingDay -lt $workingDayPerMonth ]]
do
totalWorkingDay=$(($totalWorkingDay+1))
randomCheck=$((RANDOM%3))
case $randomCheck in
        $isFulltime)
               empWorkingHrs=8
                echo "Employee is Fulltime present"
		;;

        $isParttime)
                empWorkingHrs=4
                echo "Employee is parttime present"
                ;;
        *)
                echo "Employee is absent"
                ;;
esac
		totalEmpHours=$(($totalEmpHours+$empWorkingHrs))
done

totalSalary=$(($totalEmpHours*$empWagePerHr))


