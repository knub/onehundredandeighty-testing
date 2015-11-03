
show: build
	evince *.pdf

build:
	pandoc -S -f markdown -o output.pdf  *.md

