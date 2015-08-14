#!/bin/bash

# Disable numbering and captioning from settings.tex,
# and execute following command from the root directory:
# pdflatex -shell-escape main.tex

pdfcrop ../main.pdf
convert -density 600 ../main-crop.pdf -quality 90 img.png
rm ../main-crop.pdf
