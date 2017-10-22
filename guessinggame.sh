#!/usr/bin/env bash
# File: guessinggame.sh

function echo_response {
  if [[ $1 -lt 0 ]]
  then
    echo "Too high. Try again!"
  elif [[ $1 -gt 0 ]]
  then
    echo "Too low.  Try again!"
  else
    echo "DING! DING! DING!  You are correct!"
    echo "There are $number_of_files files in the current directory."
  fi
}

# get the number of files in current directory
number_of_files=$(ls -l | wc -l)
echo "Let's play a game!"
echo "How many files are in the current directory?"
echo "Type in your first guess and then press Enter:"
read guess
let good_guess=0

while [[ $good_guess = 0 ]]
do
  let diff=$number_of_files-$guess
  echo_response $diff
  if [[ $diff -eq 0 ]]
  then
    let good_guess=1
  else # read the next guess
    read guess
  fi
done
