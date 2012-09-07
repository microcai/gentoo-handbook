all: 稿件.pdf
LATEX=xelatex -interaction=nonstopmode
稿件.pdf: 稿件.tex 稿件.toc
	${LATEX}  稿件.tex && ${LATEX} 稿件.tex


稿件.toc:稿件.tex
	${LATEX} 稿件.tex && rm 稿件.pdf
