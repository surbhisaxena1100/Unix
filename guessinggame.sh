#developer   : Surbhi
#github      : github.com/surbhisaxena1100/Unix

#!/bin/bash
#read the total file number of the current direcitory
fileNumber=$(expr $(ls -l .| wc -l) - 1)
function playGame()
{
	echo "Please enter postive integer number"

	#read user guess
	read guess

	#evalutating user guess
	while [[ $guess -ne $fileNumber ]]
		do
			if [[ $guess -gt $fileNumber ]]
			then
				echo "your guess is to high."
			elif [[ $guess -lt $fileNumber ]]
			then
				echo "your guess is too low."
			fi

			echo "Please enter your guess again" 
			read guess
		done
	echo "Congratulations!!!"
}

#prompt user for playing the game
playGame