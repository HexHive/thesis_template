
name=thesis

all: *.tex *.bib 
	rubber --pdf $(name).tex

clean:
	rubber --clean --pdf $(name).tex

