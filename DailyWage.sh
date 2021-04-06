empWagePerHr=20
isPresent=1
isAbsent=0
empWorkingHrs=0
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
        empWorkingHrs=8
        echo "Employee is  present"
else
        echo "Employee is absent"

fi

DailyWage=$(($empWagePerHr*$empWorkingHrs))
echo $DailyWage
