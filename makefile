MC=pdflatex
BC=bibtex
CFLAGS=-shell-escape -synctex=1 -interaction=nonstopmode
FILE=Main
RM = del /Q

ifdef SYSTEMROOT
   RM = del /Q
   FixPath = $(subst /,\,$1)
else
   ifeq ($(shell uname), Linux)
      FixPath = $1
   endif
endif

all: *.tex
	$(MC) $(FILE).tex $(CFLAGS)
	$(BC) $(FILE)
	$(MC) $(FILE).tex
	$(MC) $(FILE).tex




clean:
	$(RM) $(FILE)-*
	$(RM) $(FILE).auxlock
	$(RM) $(FILE).idx
	$(RM) $(FILE)*.lof
	$(RM) $(FILE).log
	$(RM) $(FILE).out
	$(RM) $(FILE).run*
	$(RM) $(FILE).toc
	$(RM) $(FILE).aux
	$(RM) $(FILE).bbl
	$(RM) $(FILE).blg
	$(RM) $(FILE).lot
