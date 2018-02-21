#!/usr/bin/env bash

./build.sh full

cp out/notebook_full.pdf pdf/notebook_full.pdf

git status
git add -A
git commit -m "update notebook"
git push origin master