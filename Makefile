LYX=$(wildcard *.lyx)
PDF=$(LYX:.lyx=.pdf)
TEX=$(LYX:.lyx=.tex)

all: $(TEX) $(PDF)

%.pdf: %.lyx
	lyx --export pdf $<

%.tex: %.lyx
	lyx --export latex $<

.PHONY: all
