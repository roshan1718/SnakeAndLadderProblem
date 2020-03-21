#!/bin/bash -x

# @ Description: Snake And Ladder Problem
# @ Author: Roshan Balkrushna Shinde

# @ Since: 21-03-2020

#CONSTANT
START_POSITION=0
END_POSITION=100

#variables
position=0
diceRoll=0

function play()
{
while [[ $position -lt $END_POSITION ]]
do
	diceOutput=$((RANDOM%6+1))
	choice=$((RANDOM%3))

	case $choice in
		0)
			#No Play Condition
			if [[ $position -lt 0 ]]
			then
				position=$START_POSITION
			else
				position=$(($position+0))
			fi
			;;
		1)
			#Snake
			if [[ $position -lt 0 ]]
			then
				position=$START_POSITION
			else
				position=$(($position-$diceOutput))
			fi
			;;
		2)
			#Ladder
			if [[ $(($END_POSITION - $position)) -ge $diceOutput ]]
			then
				position=$(($position+$diceOutput))
			else
				position=$(($position+0))
			fi
			;;
		*)
			echo Invalid choice
			;;
	esac
	((diceRoll++))
	echo Position After $diceRoll th Roll.. $position
done
echo Player Won
}
play
echo Number of Times Dice Roll..$diceRoll
