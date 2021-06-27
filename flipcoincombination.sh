#!/bin/bash -x

randomcheck=$((RANDOM%2));

case $randomcheck in
                 1)
                 echo Heads
                 ;;
                 *)
                 echo Tails
                 ;;
esac

#Singlet-combination


read -p "Enter number of times to flip:" n
declare -A singlet_frequency=(

                                [H]=0
                                [T]=0

                              )
for(( flip = 1; flip <= n; flip++ ))
do
    echo -n "Flip-$flip is "
    (( coin = RANDOM % 2 ))
    case $coin in 
        0)
            echo "Heads"
            (( singlet_frequency[H]++ ))
            ;;
        1)
            echo "Tails"
            (( singlet_frequency[T]++ ))
    esac
done

for combination in ${!singlet_frequency[@]}
do
    #update count values  with corresponding percentage

    percentage=$(( ${singlet_frequency[$combination]}  * 100 / n ))
    singlet_frequency[$combination]=$percentage
    echo "percentage of $combination is ${singlet_frequency[$combination]}%"   
done

