#!/bin/bash -x

# @ Description: Snake And Ladder Problem
# @ Author: Roshan Balkrushna Shinde

# @ Since: 21-03-2020

#CONSTANT
STRAT_POSITION=0
END_POSITION=100

#variables
position=0


while [[ $position -lt $END_POSITION ]]
do
	diceOutput=$((RANDOM%6+1))
	choice=$((RANDOM%3))
	case $choice in
		0)
			# No Play Condition
			if [[ $position -lt 0 ]]
         		then
            			position=0
			else
         			position=$(($position+0))
			fi
			;;
		1)
			# Snake
			if [[ $position -lt 0 ]]
         		then
            			position=0
         		else
            			position=$(($position-$diceOutput))
			fi
			;;
		*)
			# ladder
			if [[ $position -lt 0 ]]
			then
				position=0
			else
				position=$(($position+$diceOutput))
			fi
			;;
	esac
done
echo "Player position ::"$position
