#!/bin/bash

# Clean-up cache files and temporary files
# This script is intended to clean up cache files and temporary files
# that may have been created during the execution of the notebook.

echo "🧹 Cleaning up cache files and temporary files..."

# Get the project root directory (parent of _agent.RAAN)
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../../.." && pwd)"
NOTEBOOK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "📁 Project root: $PROJECT_ROOT"
echo "📁 Notebook directory: $NOTEBOOK_DIR"

# Remove Python cache files
echo "🐍 Removing Python cache files..."
find "$PROJECT_ROOT" -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
find "$PROJECT_ROOT" -name "*.pyc" -delete 2>/dev/null || true
find "$PROJECT_ROOT" -name "*.pyo" -delete 2>/dev/null || true
find "$PROJECT_ROOT" -name "*.pyd" -delete 2>/dev/null || true

# Remove build and distribution files
echo "📦 Removing build and distribution files..."
find "$PROJECT_ROOT" -type d -name "build" -exec rm -rf {} + 2>/dev/null || true
find "$PROJECT_ROOT" -type d -name "dist" -exec rm -rf {} + 2>/dev/null || true
find "$PROJECT_ROOT" -type d -name "*.egg-info" -exec rm -rf {} + 2>/dev/null || true

# Remove log files
echo "📝 Removing log files..."
find "$PROJECT_ROOT" -name "*.log" -delete 2>/dev/null || true

# Remove temporary files
echo "🗑️ Removing temporary files..."
find "$PROJECT_ROOT" -name "*.tmp" -delete 2>/dev/null || true
find "$PROJECT_ROOT" -name "*.bak" -delete 2>/dev/null || true
find "$PROJECT_ROOT" -name "*.swp" -delete 2>/dev/null || true

# Remove macOS system files
echo "🍎 Removing macOS system files..."
find "$PROJECT_ROOT" -name ".DS_Store" -delete 2>/dev/null || true

# Remove testing cache files
echo "🧪 Removing testing cache files..."
find "$PROJECT_ROOT" -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
find "$PROJECT_ROOT" -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
find "$PROJECT_ROOT" -name ".coverage" -delete 2>/dev/null || true

# Clean up Jupyter notebook checkpoints
echo "📓 Removing Jupyter notebook checkpoints..."
find "$PROJECT_ROOT" -type d -name ".ipynb_checkpoints" -exec rm -rf {} + 2>/dev/null || true

echo "Cleanup complete!"