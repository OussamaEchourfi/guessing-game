# guessing-game
all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Date et heure de génération" >> README.md
	date >> README.md
	echo "\n## Nombre de lignes de code" >> README.md
	wc -l < guessinggame.sh | awk '{print $$1 " lignes"}' >> README.md
    make

