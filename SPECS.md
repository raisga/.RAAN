# .RAAN Specifications

This document outlines the specifications for the RAAN project, which aims to create a reliable agentic AI notebook system. The specifications include details about the file extension, usage instructions, and the technology stack used.

## File Extension

The RAAN project uses a custom file extension `.RAAN` for its notebooks. The specifications for this file extension are as follows:

- **File Name**: The file name must end with `.RAAN`.
- **File Structure**: The file must be structured in a specific format that includes metadata, content, and execution history.
  - **Metadata (`metadata.jsonc`)**: The metadata section should include:
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
    "author": "John Doe",
    "license": "MIT",
    "created_at": "2023-10-01T00:00:00Z",
    "updated_at": "2023-10-01T00:00:01Z",
    "tags": ["sample", "agent", "demo"]
  }
  ```
  - **Notebook (`notebook/`)**: The notebook section should include:
    ```
      agent.ipynb
      requirements.txt
      artifacts/
          ...
      config/
          data.py
          ollama.py
      scripts/
          pdf.sh
          run.sh
          setup.sh
          ...
      tools/
          ...
      utils/
          agent_cli.py
          format_knowledge_base.py
          install_and_import.py
          load_file.py
          ollama_chat.py
          preprocess_text.py
          print_setup_status.py
    ```
  - **Context (`context/`)**: This section includes any relevant context that the agent needs to operate effectively. It can be explanations, instructions, or any other necessary details.
  - **LLMS (`llms.txt`)**: This sections describes the instructions for the composition of the notebook.
- **File Compatibility**: The `.RAAN` files should be compatible with various text editors and IDEs that support custom file extensions.
    - We can create a plugin for popular editors like VSCode to improve the editing experience.

## Tech Stack

- **Python**: The primary programming language for RAAN.
- **JupyterLab**: For interactive notebooks.
- **Playwright**: For converting Jupyter notebooks to PDF with `jupyter nbconverter`.
- **Pandas**: For data manipulation and analysis.
- **Rich**: For user input, rich text and formatting of console output.
- **LocalAI**: For managing and serving language models locally.
- **LangChain**: For building language model applications.
- **Transformers**: For working with pre-trained models.
- **Faiss-cpu**: For efficient similarity search and clustering of dense vectors on CPU.

### (TO BE) Deprecated Libraries

- **Ollama**: Previously used for model management, now replaced by LocalAI.
