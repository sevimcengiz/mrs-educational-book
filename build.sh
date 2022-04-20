#!/bin/sh

set -ev

export RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/quarto/bin"
cd mrs-educational-book
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', output_dir = '../book')"
cd ..
git push
