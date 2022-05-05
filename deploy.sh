#!/bin/sh

set -e

git fetch
git checkout gh-pages
cp -R book/* .
rm -Rf book
git add --all *
git commit -m "Update the book"
git push
