#!/bin/bash
git add -A
git commit -m "$1"

cp output/diogoaosCV.pdf /tmp/diogoaosCV.pdf

git checkout gh-pages
cp /tmp/diogoaosCV.pdf ./
git add -A
git commit -m "$1"
git push origin gh-pages
git checkout master
git push origin master

