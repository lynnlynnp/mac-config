# README 

Hi! This repository contains my personal macOS configuration files, shell scripts, productivity tools, and environment settings. That said, if any seem useful to you, feel free to use em!

By adding `~/.mac-config` to the system `$PATH`, all the custom scripts in this repository are immediately available as global commands.

## FEATURES & UTILITIES

### AI & GIT WORKFLOWS

- **`aicommit`**: Automatically generates and applies an AI-powered commit message based on your `git diff` using [Fabric](https://github.com/danielmiessler/fabric).
- **`summarise`**: Summarizes the contents of your clipboard (or a provided URL) using Fabric and renders the markdown output beautifully with `glow`.

### DOCUMENT CONVERSION

- **`md2html`**: Converts Markdown files to standalone HTML using `pandoc` with a custom CSS stylesheet (`stylesheet.css`), then optionally opens it in Safari.
- **`md2pdf`**: Converts Markdown to PDF by generating an intermediary HTML file with `pandoc` and then printing it to PDF via LibreOffice (`soffice`).
- **`txt2pdf`**: Opens a text file in LibreOffice, applies a custom formatting macro, and exports it directly to PDF.

### IMAGE EDITING

*These scripts require [ImageMagick](https://imagemagick.org/).*
- **`imgtext`**: Adds centered, customized typography and captions to an input image.
- **`round_corners`**: Dynamically crops an image with rounded corners based on a specified percentage radius.

Love Magick 💖 Cannot recommend it enough.

## SETUP & INSTALLATION

To use this configuration on a new machine:

1. Clone this repository to your home directory:

2. Ensure the scripts are executable:
   ```bash
   chmod +x ~/.mac-config/*
   ```
3. Source the `.zshrc` (or append its contents to your existing `~/.zshrc`):
   ```bash
   source ~/.mac-config/.zshrc
   ```

## DEPENDENCIES

Some scripts rely on external tools and libraries:
- **[Fabric](https://github.com/danielmiessler/fabric)** (for AI commands)
- **[Pandoc](https://pandoc.org/)** (for markdown conversions)
- **[LibreOffice](https://www.libreoffice.org/)** (`soffice` CLI for PDF exports)
- **[ImageMagick](https://imagemagick.org/)** (for image edits)
- **Python libraries**: `polars` (for `csvinfo`)
- **CLI Tools**: `glow` (for markdown rendering)
