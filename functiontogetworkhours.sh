#!/bin/bash -x
empWagePerHr=20
workingDayPerMonth=20
isFulltime=1
isParttime=2
empWorkingHrs=0
MaxHoursInMonth=100
totalWorkingDay=0
totalEmpHours=0

declare -A dailywage

function to_get_workHrs()
{

local randomCheck=$1

case $randomCheck in
        $isFulltime)
               empWorkingHrs=8
                    ;;

        $isParttime)
                empWorkingHrs=4
                     ;;
        *)       empWokingHrs=0
                     ;;
esac
		echo $empWorkingHrs

}



while [[ $totalEmpHours -lt $MaxHoursInMonth &&  $totalWorkingDay -lt $workingDayPerMonth ]]
do
totalWorkingDay=$(($totalWorkingDay+1))
randomCheck=$((RANDOM%3))
empWorkingHrs="$( to_get_workHrs $randomCheck )"
totalEmpHours=$(($totalEmpHours+$empWorkingHrs))
dailyWage[$totalWorkingDay]=$( to_get_workHrs $empWorkingHrs)
done

totalSalary=$(($totalEmpHours*$empWagePerHr))
echo ${dailyWage[@]}

