# !/usr/bin/env python3.10
# -*- coding: utf-8 -*-

OLLAMA_API_URL = "http://localhost:11434/api/generate"

MODEL = "llama3"
 
SYSTEM_PROMPT = """
    You are an AI assistant designed to help users with various tasks.
"""

SAMPLE_DATA = {
    "id": [0,1,2], # Unique identifier for each entry
    "tag": [ # Tags for easy searching
        ["42", "life", "meaning"],
        ["pasta", "cooking", "recipe"],
        ["chocolate", "cake", "dessert"]
    ],
    "question": [  # Common questions related to the entry
        "What is the meaning of life?",
        "How do I cook pasta?",
        "Can you please explain the recipe for chocolate cake?"
    ],
    "answer": [  # Answers to the common questions
        "The meaning of life is 42",
        "To cook pasta, boil water, add salt, and cook pasta for 8-10 minutes.",
        "To make chocolate cake, mix flour, sugar, cocoa powder, eggs, and bake at 350°F for 30 minutes."
    ],
}

MERMAID_DIAGRAM = """
    graph TD
        A[User Input] --> B[Preprocess Input]
        B --> C[Query Knowledge Base]
        C --> D[Generate Response with LLM]
        D --> E[Post-process Response]
        E --> F[Display to User]
"""