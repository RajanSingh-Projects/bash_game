all: README.md

README.md: guessinggame.sh
	printf '## Git game\n' >> README.md
	echo "File was generated at *$(shell date)*" >> README.md
	printf "\n" >> README.md       
	echo "Number of lines in guessinggame.sh file: **$(shell cat guessinggame.sh | wc -l | awk '{print $$1}')**" >> README.md
clean:
	rm -f README.md

