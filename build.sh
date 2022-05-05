#!/bin/sh

set -ev

# Export environment variable only on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    export RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/quarto/bin"
fi
cd mrs-educational-book
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook', output_dir = '../book')"
cd ..
