all: 稿件.pdf
LATEX=xelatex -interaction=nonstopmode
XDVTEX=xelatex -no-pdf -interaction=nonstopmode
xdvipdfmx=xdvipdfmx

稿件.pdf: 稿件.xdv 稿件.toc
	${xdvipdfmx}  稿件.xdv

稿件.toc 稿件.xdv:coverpage.tex  faq.tex  preface.tex  setfonts.tex  thanks.tex  稿件.tex
	${XDVTEX} 稿件.tex && ${XDVTEX} 稿件.tex


clean:
	rm -rf *.pdf *.out *.blg *.aux *.bbl *.toc *.log *.xdv
