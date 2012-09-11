
LATEX=xelatex -interaction=nonstopmode
XDVTEX=xelatex -no-pdf -interaction=nonstopmode
xdvipdfmx=xdvipdfmx

BOOKNAME=Linux枕边书

${BOOKNAME}.pdf: ${BOOKNAME}.xdv ${BOOKNAME}.toc
	${xdvipdfmx}  ${BOOKNAME}.xdv

${BOOKNAME}.toc ${BOOKNAME}.xdv:${BOOKNAME}.tex coverpage.tex  faq.tex  preface.tex  setfonts.tex  thanks.tex
	${XDVTEX} ${BOOKNAME}.tex && ${XDVTEX} ${BOOKNAME}.tex

clean:
	rm -rf *.pdf *.out *.blg *.aux *.bbl *.toc *.log *.xdv

all: ${BOOKNAME}.pdf

