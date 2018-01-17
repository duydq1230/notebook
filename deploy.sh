#!/usr/bin/env bash

cp out/notebook.pdf pdf/notebook.pdf

git status
git add -A
git commit -m "update notebook"
git push origin master