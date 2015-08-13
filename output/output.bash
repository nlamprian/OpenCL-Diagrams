#!/bin/bash

# Disable numbering and captioning from settings.tex
pdfcrop ../main.pdf 
convert -density 600 ../main-crop.pdf -quality 90 img.png
