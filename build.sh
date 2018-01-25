#!/usr/bin/env bash

name=notebook_full

rm -rf out/*.csv

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil $name.tex

makeindex out/$name.idx

bibtex out/$name.aux

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil $name.tex

#pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=/home/rain/PycharmProjects/notes/out -aux-directory=/home/rain/PycharmProjects/notes/auxil note.tex