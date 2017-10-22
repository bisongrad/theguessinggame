#!/usr/bin/env bash
# File: makefile

# [target]: [depedencies...]
#   [commands...]
README.md: guessinggame.sh makefile
	rm README.md
	echo "# The Guessing Game" >> README.md
	echo "\n" >> README.md
	echo "Make was run at" >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "The number of lines in guessinggame.sh is"
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
