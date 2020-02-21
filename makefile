all: README.md

README.md: guessinggame.sh
	printf '## Git game\n' >> README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md
clean:
	rm -f README.md

