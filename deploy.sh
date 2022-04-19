#!/bin/sh

set -e

git checkout gh-pages
cp -R book/* .
rm -Rf book
git add --all *
git commit -m "Update the book"
git push
git checkout main