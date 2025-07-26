#!/bin/bash

# Clean-up cache files and temporary files
# This script is intended to clean up cache files and temporary files
# that may have been created during the execution of the notebook.

echo "🧹 Cleaning up cache files and temporary files..."

# Get the project root directory (parent of _agent.RAAN)
# NOTEBOOK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NOTEBOOK_DIR=./_agent.RAAN/notebook

echo "📁 Notebook directory: $NOTEBOOK_DIR"

# Remove Python cache files
echo "🐍 Removing Python cache files..."
find "$NOTEBOOK_DIR" -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
find "$NOTEBOOK_DIR" -name "*.pyc" -delete 2>/dev/null || true
find "$NOTEBOOK_DIR" -name "*.pyo" -delete 2>/dev/null || true
find "$NOTEBOOK_DIR" -name "*.pyd" -delete 2>/dev/null || true

# Remove build and distribution files
echo "📦 Removing build and distribution files..."
find "$NOTEBOOK_DIR" -type d -name "build" -exec rm -rf {} + 2>/dev/null || true
find "$NOTEBOOK_DIR" -type d -name "dist" -exec rm -rf {} + 2>/dev/null || true
find "$NOTEBOOK_DIR" -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true

# Remove log files
echo "📝 Removing log files..."
find "$NOTEBOOK_DIR" -name "*.log" -delete 2>/dev/null || true

# Remove temporary files
echo "🗑️ Removing temporary files..."
find "$NOTEBOOK_DIR" -name "*.tmp" -delete 2>/dev/null || true
find "$NOTEBOOK_DIR" -name "*.bak" -delete 2>/dev/null || true
find "$NOTEBOOK_DIR" -name "*.swp" -delete 2>/dev/null || true

# Remove macOS system files
echo "🍎 Removing macOS system files..."
find "$NOTEBOOK_DIR" -name ".DS_Store" -delete 2>/dev/null || true

# Remove testing cache files
echo "🧪 Removing testing cache files..."
find "$NOTEBOOK_DIR" -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
find "$NOTEBOOK_DIR" -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
find "$NOTEBOOK_DIR" -name ".coverage" -delete 2>/dev/null || true

# Remove venv or virtual environment directories
echo "🦠 Removing virtual environment directories..."
find "$NOTEBOOK_DIR" -type d -name "venv" -o 

# Clean up Jupyter notebook checkpoints
echo "📓 Removing Jupyter notebook checkpoints..."
find "$NOTEBOOK_DIR" -type d -name ".ipynb_checkpoints" -exec rm -rf {} + 2>/dev/null || true

echo "Cleanup complete!"