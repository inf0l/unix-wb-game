SHELL=/usr/bin/env bash

all: readme.md

readme.md: 
	echo "# Project: guessinggame.sh" > readme.md
	date >> readme.md
	echo "" >> readme.md
	echo "guessinggame.sh contains `cat guessinggame.sh | wc -l` lines of code." >> readme.md
