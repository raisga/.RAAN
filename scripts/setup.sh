#!/usr/bin/env sh

( \
    cd _agent.RAAN/notebook && \
    python3.10 -m venv venv \
    && source venv/bin/activate \
    && pip install --upgrade pip \
    && pip install -r requirements.txt \
    && echo "\n\n\n=========================" \
    && echo "Virtual environment setup complete." \
    && echo "To activate the virtual environment, run: source venv/bin/activate" \
    && echo "To deactivate the virtual environment, run: deactivate" \
    && echo "To run the notebook, use: ./scripts/run.sh" \
    && echo "To generate a PDF, use: ./scripts/pdf.sh" \
    && echo "To clean up cache and temporary files, use: ./scripts/clean.sh" \
)

# Automatically activate the virtual environment from the terminal
# Uncomment the line below to automatically activate the virtual environment
# Note: This will only work in interactive shells, not in scripts.
# Uncomment the line below to activate the virtual environment automatically
# source _agent.RAAN/notebook/venv/bin/activate
