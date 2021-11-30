ENGINE = xelatex
NAME   = main

.PHONY: clean pdf view

all:	pdf clean
	@exit 0

clean:
	rm -f $(NAME).{aux,bbl,bcf,blg,doc,fdb_latexmk,fls,glo,gls,hd,idx,ilg,ind,listing,lof,log,lot,nav,out,run.xml,snm,synctex.gz,tcbtemp,toc,vrb,tex.bak,config.tex.bak,meta.tex.bak}
	rm -f "**/*.bak"

clean-svg:
	rm -r svg-inkscape/

pdf:
	$(ENGINE) -shell-escape -synctex=1 -interaction=nonstopmode $(NAME).tex
	biber $(NAME)
	$(ENGINE) -shell-escape -synctex=1 -interaction=nonstopmode $(NAME).tex
	$(ENGINE) -shell-escape -synctex=1 -interaction=nonstopmode $(NAME).tex

tectonic-pdf:
	tectonic --keep-logs -r 2 $(NAME).tex

view:
	xdg-open $(NAME).pdf 
