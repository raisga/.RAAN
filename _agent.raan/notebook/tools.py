# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

from langchain_core.tools import Tool, tool

# %NOTE%: Extend with more tools as needed

@tool
def search(query: str) -> str:
    """A simple search tool that returns a fixed response."""
    return f"Search results for: {query}"

def get_agentic_tools():
    """Get a list of agentic tools for the agent to use."""
    
    search_tool = Tool(
        func=search,
        name="search_tool",
        description="A tool to search for information based on a query."
    )
    return [
        search_tool,
    ]
