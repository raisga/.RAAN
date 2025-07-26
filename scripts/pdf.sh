#!/usr/bin/env sh

export PATH=/Library/TeX/texbin:$PATH

output_path="_agent.RAAN"

jupyter nbconvert agent.ipynb \
--output="$output_path" \
--to="webpdf" \
--allow-chromium-download \
--LatexPreprocessor.date="" \
--LatexPreprocessor.title="" \
--LatexPreprocessor.author_names=""