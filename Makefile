master:
	xelatex master.tex
	-bibtex  master.aux
	xelatex master.tex
	xelatex master.tex

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm

clear:
	del /S *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.brf *.aux