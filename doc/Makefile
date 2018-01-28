#./linux make executable ex=ex1

CC=/usr/bin/gcc
CFLAGS=-fopenmp

.PHONY: output presentation autorebuild thesis

all: presentation

presentation:
	pdflatex -shell-escape -interaction=batchmode -halt-on-error -output-directory=build presentation/presentation.tex

verbose:
	pdflatex -shell-escape -output-directory=build presentation/presentation.tex

autorebuild:
	fswatch -0 presentation | xargs -0 -n 1 make presentation

executable:
	$(CC) $(CFLAGS) -g -O0 src/$(ex).c -o build/$(ex)

output: executable
	build/$(ex) > output/$(ex).txt
	cat output/$(ex).txt

assembly:
	$(CC) $(CFLAGS) -S src/$(ex).c -o build/$(ex)

thesis:
	cd thesis; pdflatex -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=../build main.tex

thesis-quiet:
	pdflatex -shell-escape -interaction=batchmode -halt-on-error -output-directory=build thesis/main.tex
