empWagePerHr=20
isFulltime=1
isParttime=2
empWorkingHrs=0
randomCheck=$((RANDOM%3))

if [ $isFulltime -eq $randomCheck ]
then
        empWorkingHrs=8
        echo "Employee is Fulltime present"

elif [ $isParttime -eq $randomCheck ]
then
        empWorkingHrs=4
        echo "Employee is parttime present"

else
        echo "Employee is absent"

fi

DailyWage=$(($empWagePerHr*$empWorkingHrs))
echo $DailyWage
