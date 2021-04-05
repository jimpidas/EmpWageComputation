isPresent=1
isAbsent=0
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
        echo "Employee is Fulltime present"

else
            echo "Employee is absent"

fi

