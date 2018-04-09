#!/usr/bin/env bash

name=python
declare -A folders
folders=(
  ["python"]="books/programming/python"
)

mkdir out

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil ${folders[$name]}/index.tex


makeindex out/index.idx
#
bibtex out/index.aux

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil ${folders[$name]}/index.tex

cp out/index.pdf books/programming/python/python.pdf
rm -rf out