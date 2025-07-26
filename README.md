# .RAAN

> (R)eliable (A)gentic (A)I (N)otebook

This repository contains the specifications for the .RAAN project, which aims to create a reliable agentic AI notebook file system. The specifications outline the architecture of the file extension.

## RAAN Specifications

Take a look at the [SPECS.md](SPECS.md) file for detailed specifications of the .RAAN project, including file extension, usage instructions, and the technology stack used.

### Usage

To use the RAAN notebook system, follow these steps:

1. Create a new file with the `.RAAN` extension (follow the [specifications](SPECS.MD)).
2. Structure the file according to the specifications outlined above.
3. Use a compatible text editor or IDE to edit the file.
4. Save the file to maintain the structure and metadata.

## TODO - Tech Debt

- [ ] Update `/scripts` to use python scripts instead of bash scripts.
- [ ] Update `ollama` to `localai` in jupyter notebooks.
- [ ] Research the best practices for structuring file extensions for AI notebooks.
- [ ] Complete the specifications for the file extension, check what is the "industry standard" for AI notebooks.
- [ ] Implement a plugin for VS Code to improve the editing experience.
- [ ] Create artifacts for the RAAN project, including example notebooks and documentation.
- [ ] Integrate with Nutrino Notebooks for MCP capabilities (PoC this first!).
- [ ] Setup python lintering and formatting.
- [ ] Setup python testing framework.
- [ ] Create a custom template webpdf to export notebook as PDF with custom styles (e.g. fix the margins!).
- [ ] Handle context to use vector databases for knowledge bases, instead of just using the knowledge base as a list of strings.

## Resources

- [Jupyter Notebook Templates](http://blog.juliusschulz.de/blog/ultimate-ipython-notebook#templates)
- [Mermaid Documentation](https://mermaid-js.github.io/mermaid/#/)
