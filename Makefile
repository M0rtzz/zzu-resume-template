XELATEX = xelatex -synctex=1
RM = rm -rf

SRC = resume.tex
STY = fontawesome-4.7.0.sty
PDF = resume.pdf

all: $(PDF)

$(PDF): $(SRC) $(STY)

.tex.pdf:
	$(RM) $@
	$(XELATEX) $*.tex
	$(XELATEX) $*.tex

clean:
	$(RM) resume.aux
	$(RM) resume.log
	$(RM) resume.synctex.gz

distclean: clean
	$(RM) resume.pdf

.PHONY: all clean distclean

.SUFFIXES: .tex .pdf