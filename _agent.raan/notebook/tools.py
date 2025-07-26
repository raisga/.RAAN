# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

from langchain_core.tools import tool

@tool
def search(query: str) -> str:
    """A simple search tool that returns a fixed response."""
    return f"Search results for: {query}"