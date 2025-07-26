# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

def test_search_tool(search_tool):
    """Test the search tool to ensure it returns expected results."""

    # Test a valid search query
    query = "test query"
    response = search_tool.invoke(query)
    assert response == f"Search results for: {query}", "Search tool did not return expected response"
    
    # Test an empty search query
    empty_query = ""
    response_empty = search_tool.invoke(empty_query)
    assert response_empty == f"Search results for: {empty_query}", "Search tool did not handle empty query correctly"

def test_agentic_tools(agentic_tools):
    """Test the agentic tools to ensure they function correctly."""
    
    # Check if the tools list is not empty
    print(f"Number of agentic tools: {len(agentic_tools)}")
    assert len(agentic_tools) > 0, "Agentic tools list is empty"
    
    # Test each tool in the agentic tools
    for tool in agentic_tools:
        print(f"---")
        print(f"Tool name: {getattr(tool, 'name', 'No name attribute')}")
        print(f"Tool has 'invoke' attribute: {hasattr(tool, 'invoke')}")
        print(f"Tool invoke is callable: {callable(getattr(tool, 'invoke', None))}")
        
        assert hasattr(tool, 'invoke'), f"Tool {tool.name} does not have an invoke method"
        assert callable(tool.invoke), f"Tool {tool.name} invoke method is not callable"
        
        # Test the search tool specifically
        if tool.name == "search_tool":
            test_search_tool(tool)
