#!/usr/bin/env sh

NOTEBOOK_DIR=./_agent.RAAN/notebook
AGENT_FILE=agent.ipynb
NB_AGENT_PATH="$NOTEBOOK_DIR/$AGENT_FILE"

SLIDESHOW_FILE="report"

export PATH=/Library/TeX/texbin:$PATH

jupyter nbconvert "$NB_AGENT_PATH" \
--output="$SLIDESHOW_FILE" \
--to="slides" \
--LatexPreprocessor.date="" \
--LatexPreprocessor.title="" \
--LatexPreprocessor.author_names=""

# Move and open the generated slideshow
mv "$NOTEBOOK_DIR/$SLIDESHOW_FILE".slides.html ./
open "$SLIDESHOW_FILE".slides.html
