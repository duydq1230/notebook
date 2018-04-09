#!/usr/bin/env bash

rm -rf out/*

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil books/programming/python/index.tex


makeindex out/index.idx

bibtex out/index.aux

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out -aux-directory=auxil books/programming/python/index.tex

cp out/index.pdf books/programming/python/python.pdf
rm -rf out