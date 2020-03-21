#!/bin/bash -x

# @ Description: Snake And Ladder Problem
# @ Author: Roshan Balkrushna Shinde

# @ Since: 21-03-2020

#CONSTANT
STRAT_POSITION=0
END_POSITION=100

#variables
position=0

diceOutput=$((RANDOM%6+1))
echo "Diceoutput is ::" $diceOutput

diceOutput=$((RANDOM%6+1))
choice=$((RANDOM%3))
	case $choice in
		0)
			# No Play Condition
			position=$(($position+0)) ;;
		1)
			# Snake
			position=$(($position-$diceOutput)) ;;
		*)
			# ladder
			position=$(($position+$diceOutput))	;;
	esac
echo "Position of Playar is::"$position
