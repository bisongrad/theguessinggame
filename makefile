#!/usr/bin/env bash
# File: makefile

# [target]: [depedencies...]
#   [commands...]
README.md: guessinggame.sh makefile
	rm README.md
	echo "The Guessing Game" >> README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
