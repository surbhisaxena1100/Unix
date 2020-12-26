info:guessinggame.sh
	echo "#Title:" > README.md
	find -name guessinggame.sh >> README.md
	echo "'make' was run on:" >> README.md
	date >> README.md
	echo "Total number line of code in guessinggame.sh are:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md