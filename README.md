# README 

Hi! This repository contains my personal macOS configuration files, shell scripts, productivity tools, and environment settings. That said, if any seem useful to you, feel free to use em!

By adding `~/.mac-config` to the system `$PATH`, all the custom scripts in this repository are immediately available as global commands.

```bash
.
├── README.md
├── coding-utils/ # Utilities & shortcuts used for coding
│   ├── aicommit
│   ├── aigd
│   ├── createrepo
│   └── pylint
├── image-editing/ # Img manipulation scripts using `magick`
│   ├── image-magick-commands.md
│   ├── imgtext
│   └── round_corners
└── * Other utils and scripts
```

## SOME OF MY FAVS

### AI & GIT WORKFLOWS

- **`coding-utils/aicommit`**: Automatically generates and applies an AI-powered commit message based on your `git diff` using [Fabric](https://github.com/danielmiessler/fabric).
- **`coding-utils/createrepo`**: Initializes a Git repository, creates a corresponding GitHub repository using `gh`, and populates a default `.gitignore`.

### DOCUMENT CONVERSION & GENERATION

- **`md2html`**: Converts Markdown files to standalone HTML using `pandoc` with a custom CSS stylesheet (`stylesheet.css`), then optionally opens it in Safari.
- **`md2pdf`**: Converts Markdown to PDF by generating an intermediary HTML file with `pandoc` and then printing it to PDF via LibreOffice (`soffice`).
- **`txt2pdf`**: Opens a text file in LibreOffice, applies a custom formatting macro, and exports it directly to PDF.

### IMAGE EDITING

- **`image-editing/imgtext`**: Adds centered, customized typography and captions to an input image.
- **`image-editing/round_corners`**: Dynamically crops an image with rounded corners based on a specified percentage radius.

Massive shout out to [ImageMagick](https://github.com/imagemagick/imagemagick) 💖 Cannot recommend it enough.

## SETUP & INSTALLATION

To use this configuration on a new machine:

1. Clone this repository to your home directory:
   ```bash
   git clone https://github.com/yourusername/.mac-config.git ~/.mac-config
   ```
2. Ensure the scripts are executable:
   ```bash
   chmod +x ~/.mac-config/* ~/.mac-config/coding-utils/* ~/.mac-config/image-editing/*
   ```
3. Add the scripts to your shell's `$PATH` (e.g. inside `~/.zshrc`):
   ```bash
   export PATH="$HOME/.mac-config:$HOME/.mac-config/coding-utils:$HOME/.mac-config/image-editing:$PATH"
   ```

## GETTING STARTED & DEPENDENCIES

Some scripts rely on external tools and libraries. Follow these instructions to download and set them up.

### 1. Install Homebrew
If you don't have it installed already:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install Core Command-Line Tools
Use Homebrew to install the dependencies:
```bash
brew install pandoc glow imagemagick uv gh pnpm
```
```bash
brew install --cask libreoffice
```
