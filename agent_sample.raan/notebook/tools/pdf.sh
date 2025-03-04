#!/usr/bin/env sh

export PATH=/Library/TeX/texbin:$PATH

jupyter nbconvert agent.ipynb \
--output="report" \
--to="webpdf" \
--allow-chromium-download \
--LatexPreprocessor.date="" \
--LatexPreprocessor.title="" \
--LatexPreprocessor.author_names=""