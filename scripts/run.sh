#!/usr/bin/env sh

NOTEBOOK_DIR=./_agent.RAAN/notebook
AGENT_FILE=agent.ipynb
NB_AGENT_PATH="$NOTEBOOK_DIR/$AGENT_FILE"

jupyter-lab "$NB_AGENT_PATH" 