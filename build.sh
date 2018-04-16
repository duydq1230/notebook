#!/usr/bin/env bash

name=python

echo $#

if [ $# -eq 1 ]; then
    name=$1
fi

declare -A folders
folders=(
  ["latex"]="books/computer_science/latex"
  ["docker"]="books/computer_science/docker"
  ["python"]="books/programming/python"
  ["java"]="books/programming/java"
)
folder=${folders[$name]}

mkdir out

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out $folder/index.tex


makeindex out/index.idx

bibtex out/index.aux

pdflatex -file-line-error -interaction=nonstopmode -synctex=1 -output-format=pdf -output-directory=out $folder/index.tex

cp out/index.pdf $folder/$name.pdf

rm -rf out

echo -e "\nBuild $name successfully"