#!/bin/bash -x
empWagePerHr=20
workingDayPerMonth=20
isFulltime=1
isParttime=2
empWorkingHrs=0
totalSalary=0

for(( day=1; day <= $workingDayPerMonth; day++ ))
do
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


salary=$(($empWagePerHr*$empWorkingHrs))
totalSalary=$(($totalSalary+$salary))
done
