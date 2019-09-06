#!/bin/bash

# string='Hello'

# if [[ -n $string ]]
# then
#   echo $string
# fi

# integer_1=10
# integer_2=10

# if [[ $integer_1 -eq $integer_2 ]]
# then
#   echo $integer_1 and $integer_2 are the same!
# fi

# integer_3=5

# if [[ $integer_3 -le $integer_2 ]]
# then
#   echo $integer_2 is bigger than $integer_3
# fi


# if [[ -e ./hello_world.sh ]]
# then
#   echo File exists
# fi

# integer=4

# if [[ $integer -lt 10 ]]
# then
#   echo $integer is less than 10

#   if [[ $integer -lt 5 ]]
#   then
#     echo $integer is also less than 5
#   fi
# fi


# integer=15

# if [[ $integer -lt 10 ]]
# then
#   echo $integer is less than 10
# else
#   echo $integer is not less than 10
# fi


# integer=15
# if [[ $integer -lt 10 ]]
# then
#   echo $integer is less than 10
# elif [[ $integer -gt 20 ]]
#   then
#     echo $integer is greater than 20
#   else
#     echo $integer is between 10 and 20
#   fi


# integer=15

# if [[ $integer -gt 10 ]] && [[ $integer -lt 20 ]]
# then
#   echo $integer is between 10 and 20
# fi

# integer=7

# if ! ([ $integer -eq 5 ]) || ! ([ $integer -eq 6 ])
# then
#   echo $integer is not 5 or 6
# fi


integer=8

if [[ $integer = 5 ]]
then
  echo $integer is 5
elif [[ $integer -gt 0 ]] && [[ $integer -lt 5 ]]
  then
  echo $integer is greater than zero and less than 5
else
  echo $integer i have no idea
fi

integer=8

if !([ $integer -le 2 ])
then
  echo $integer is greater than 2
fi




