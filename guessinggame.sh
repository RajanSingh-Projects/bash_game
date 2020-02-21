#!/usr/bin/env bash
# File: guessinggame.sh

function check_guess {
  number_of_files=$1
  guess=$2
  if [[ $guess -eq $number_of_files ]]
  then
    echo "Congratulations! You guessed the correct number."
    let false_guess=0
  elif [[ $guess -gt $number_of_files ]]
  then
    echo "Your guess is too high"
    let false_guess=1
  elif [[ $guess -lt $number_of_files ]]
  then
    echo "Your guess is too low"
    let false_guess=1
  fi  
}

number_of_files=$(ls | wc -l)
false_guess=1
while [[ false_guess -eq 1 ]]
do
  echo "Please enter the number of files in the directory"
  read guess
  check_guess $number_of_files $guess
done
