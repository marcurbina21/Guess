all: README.md

README.md: guessinggame.sh

	echo "\n**Description**: make a program called *guessinggame.sh*. This program asks the user is told to guess higher or lower. Once the user guesses correctly the program ends." >> README.md
	echo -n "\n**Make date**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
