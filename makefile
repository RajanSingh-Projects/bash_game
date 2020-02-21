all: README.md

README.md: guessinggame.sh
	echo 'Git game' >> README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md
clean:
	rm -f README.md

