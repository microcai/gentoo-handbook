all: 稿件.pdf

稿件.pdf: 稿件.tex 稿件.toc
	xelatex 稿件.tex && xelatex 稿件.tex


稿件.toc:稿件.tex
	xelatex 稿件.tex && rm 稿件.pdf
