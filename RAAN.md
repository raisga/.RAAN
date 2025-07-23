# RAAN

This document outlines the specifications for the RAAN project, which aims to create a reliable agentic AI notebook system. The specifications include details about the file extension, usage instructions, and the technology stack used.

## File Extension Specifications

The RAAN project uses a custom file extension `.raan` for its notebooks. The specifications for this file extension are as follows:

- **File Name**: The file name must end with `.raan`.
- **File Structure**: The file must be structured in a specific format that includes metadata, content, and execution history.
  - **Metadata**: The metadata section should include:
    - Name of the notebook
    - Description of the notebook
    - Version number
    - Author(s)
    - License information
    - Creation date
    - Last modified date
    - Tags or keywords for easy searching
  - Example metadata structure:
  ```jsonc
  {
    "name": "agent_sample",
    "description": "A sample agent demonstrating basic functionality",
    "version": "1.0.0",
    "author": "Your Name",
    "license": "MIT",
    "created_at": "2023-10-01T00:00:00Z",
    "updated_at": "2023-10-01T00:00:00Z",
    "tags": ["sample", "agent", "demo"]
  }
  ```
  - **Notebook**: The notebook section should include:
    - TODO: Add section for code, text, and other tools.
- **Compatibility**: The `.raan` files should be compatible with various text editors and IDEs that support custom file extensions.
    - We can create a plugin for popular editors like VSCode to improve the editing experience.

## Tech Stack

- **Python**: The primary programming language for RAAN.
- **JupyterLab**: For interactive notebooks.
- **Pandas**: For data manipulation and analysis.
- **Rich**: For user input, rich text and formatting of console output.
- **LocalAI**: For managing and serving language models locally.
- **LangChain**: For building language model applications.
- **Transformers**: For working with pre-trained models.
- **Faiss-cpu**: For efficient similarity search and clustering of dense vectors on CPU.

### Deprecated Libraries

- **Ollama**: Previously used for model management, now replaced by LocalAI.
