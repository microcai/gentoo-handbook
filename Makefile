
XELATEX=xelatex -interaction=nonstopmode

LATEX=${XELATEX}
XDVTEX=${XELATEX} -no-pdf 
xdvipdfmx=xdvipdfmx

BOOKNAME=Linux枕边书

${BOOKNAME}.pdf: ${BOOKNAME}.xdv ${BOOKNAME}.toc
	${LATEX} ${BOOKNAME}.tex

${BOOKNAME}.toc ${BOOKNAME}.xdv:${BOOKNAME}.tex coverpage.tex  faq.tex  preface.tex  setfonts.tex  thanks.tex
	${XDVTEX} ${BOOKNAME}.tex && ${XDVTEX} ${BOOKNAME}.tex

clean:
	rm -rf *.pdf *.out *.blg *.aux *.bbl *.toc *.log *.xdv *.lof

all: ${BOOKNAME}.pdf

