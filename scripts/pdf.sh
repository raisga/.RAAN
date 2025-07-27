#!/usr/bin/env sh

NOTEBOOK_DIR=./_agent.RAAN/notebook
AGENT_FILE=agent.ipynb
NB_AGENT_PATH="$NOTEBOOK_DIR/$AGENT_FILE"

NB_TEMPATE="classic"    # lab | basic | classic | full
NB_CONVERT_FILE="report"

# 1. Convert Jupyter Notebook to HTML
jupyter nbconvert "$NB_AGENT_PATH" \
--output="$NB_CONVERT_FILE" \
--to="html" \
--template="$NB_TEMPATE"

# 2. Injects the following line to the generated HTML file
CUSTOM_CSS="div { background: #ffffff !important; color: #222222 !important;} tr { background: #ffffff !important; color: #222222 !important;}"
LINE_NUM=10
sed -i '' "${LINE_NUM}a\\
${CUSTOM_CSS}" "$NOTEBOOK_DIR/$NB_CONVERT_FILE.html"

# 3. Convert HTML to PDF using wkhtmltopdf
wkhtmltopdf \
--page-size A4 \
--print-media-type \
--encoding utf-8 \
--enable-internal-links -L 2.5mm -R 2.5mm -T 5mm -B 5mm \
"$NOTEBOOK_DIR/$NB_CONVERT_FILE".html \
"$NB_CONVERT_FILE".pdf

# 4. Check if the PDF file was created successfully, clean up the HTML file, and open the PDF
if [ -f "$NB_CONVERT_FILE".pdf ]; then
    echo "PDF file created successfully: $NB_CONVERT_FILE.pdf"
    rm -f "$NOTEBOOK_DIR/$NB_CONVERT_FILE".html
    open "$NB_CONVERT_FILE".pdf
else
    echo "Failed to create PDF file."
    exit 1
fi
