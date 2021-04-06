#!/bin/bash -x
empWagePerHr=20
isFulltime=1
isParttime=2
empWorkingHrs=0
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

DailyWage=$(($empWagePerHr*$empWorkingHrs))


