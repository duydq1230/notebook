#!/usr/bin/env bash

./build.sh full

cp out/notebook.pdf pdf/notebook.pdf

git status
git add -A
git commit -m "update notebook"
git push origin master