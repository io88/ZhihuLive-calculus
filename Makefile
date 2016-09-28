
.PHONY: all
all : pdf slides

.DEFAULT_GOAL := all

git:
	git init . && git config --local user.name "tempo" && git config --local user.email "tempo@zhihu" && git add slides.tex && git add images && git add Makefile && git commit -m "First commit."

pdf:
	lualatex slides.tex

slides:
	mkdir slides && convert -density 600 slides.pdf slides/slides-%02d.png

.PHONY: clean
clean:
	rm -rf slides *.aux *.log *.nav *.out *.snm *.toc *.pdf .git
