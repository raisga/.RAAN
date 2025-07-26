#!/usr/bin/env sh

NOTEBOOK_DIR=./_agent.RAAN/notebook
AGENT_FILE=agent.ipynb
NB_AGENT_PATH="$NOTEBOOK_DIR/$AGENT_FILE"

PDF_FILE="report"
PDF_TEMPLATE="basic" # built-in: lab | basic | classic

export PATH=/Library/TeX/texbin:$PATH

jupyter nbconvert "$NB_AGENT_PATH" \
--output="$PDF_FILE" \
--to="webpdf" \
--template="$PDF_TEMPLATE" \
--LatexPreprocessor.date="" \
--LatexPreprocessor.title="" \
--LatexPreprocessor.author_names="" \
--allow-chromium-download

# if the PDF_FILE already exists, it will be overwritten
if [ -f "$PDF_FILE".pdf ]; then
    echo "Removing existing PDF file: $PDF_FILE.pdf"
    rm -f "$PDF_FILE".pdf
fi

echo "Moving generated PDF file to current directory..."
mv "$NOTEBOOK_DIR/$PDF_FILE".pdf ./
open "$PDF_FILE".pdf
