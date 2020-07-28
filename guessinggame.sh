#!/usr/bin/env bash
# File: guessinggame.sh

function hilo {
gnum=$(ls $PWD | wc -l)
while [[ $guess -ne $gnum ]]; do
    if [[ $guess -gt $gnum ]]; then
        echo "Boo! Too high! Try with a smaller number:"
        read guess2
        guess=$guess2
    else
        echo "Not quite enough. Try something bigger:"
        read guess2
        guess=$guess2
    fi
done
}

echo "Guess how many files are in this folder:"
read guess
hilo $guess
echo "Correct. This folder has $gnum files."

