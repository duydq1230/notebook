#!/usr/bin/env bash

name=notebook

#if [ "$1" == "full" ] ; then
#  name=notebook_full
#fi

rm -rf out/*.csv

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil $name.tex

makeindex out/$name.idx

bibtex out/$name.aux

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxi $name.tex