#!/bin/bash
#read the total file number of the current direcitory
fileNumber=$(expr $(ls -l .| wc -l) - 1)
function playGame()
{
        echo "Guess, How many files are in the current directory?"

        #read user guess
        read guess

 cnt=0
        #evalutating user guess
        while [[ $cnt -eq 0 && $guess =~ ^[0-9]+$ ]]
                do

                        if [[ $guess -gt $fileNumber ]]
                        then
                                echo "Your guess is to high. Please enter it again"
                                read guess
                                cnt=0
                        elif [[ $guess -lt $fileNumber ]]
                        then
                                echo "Your guess is too low. Please enter it again"
                                read guess
                                cnt=0
                        elif [[ $guess -eq $fileNumber ]]
                        then
                                echo "Congratulations!! Your Guess is correct"
                                cnt=1
                        fi

                done
        if  [[ $guess =~ [^0-9]+$ ]]
        then
                echo "Please enter a valid positive integer"
        fi

}

#prompt user for playing the game
playGame