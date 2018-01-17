#!/usr/bin/env bash

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil notebook.tex

bibtex out/notebook.aux

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil notebook.tex

#pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=/home/rain/PycharmProjects/notes/out -aux-directory=/home/rain/PycharmProjects/notes/auxil note.tex