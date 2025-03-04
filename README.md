# .RAAN

> (R)eliable (A)gentic (A)I (N)otebook

This repository contains the specifications for the RAAN project, which aims to create a reliable agentic AI notebook system. The specifications outline the architecture of the file extension.

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

  - **Content**: The content section should include:
    - TODO: Add section for code, text, and other tools.

  - **Execution History**: The execution history section should log:
  - Code execution results
  - Errors encountered during execution
  - **Comments**: Users can add comments to any section of the notebook for clarity or discussion.

- **Compatibility**: The `.raan` files should be compatible with various text editors and IDEs that support custom file extensions.
    - We can create a plugin for popular editors like VSCode to improve the editing experience.

## Usage

To use the RAAN notebook system, follow these steps:

1. Create a new file with the `.raan` extension.
2. Structure the file according to the specifications outlined above.
3. Use a compatible text editor or IDE to edit the file.
4. Save the file to maintain the structure and metadata.

## TODO

- Research the best practices for structuring file extensions for AI notebooks.
- Complete the specifications for the file extension, check what is "the  industry standard" when creating a file extension for AI notebooks.
- Add usage instructions on how to use the RAAN notebook.
- Implement a plugin for popular text editors to enhance the editing experience.
