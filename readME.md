# Custom Visual Studio Code Installation Script

This script helps you install a custom version of Visual Studio Code from a `.deb` package.

## Prerequisites

1. Download Visual Studio Code from the [official site](https://code.visualstudio.com/).
2. Rename the downloaded `.deb` package to `myvscode.deb`.
3. Ensure the downloaded file is located in the `Downloads` directory for uniformity.

## Installation

1. Set the permission for the script:
    ```bash
    chmod +x ./l-installvscode.sh
    ```
2. Run the installation script:
    ```bash
    ./l-installvscode.sh
    ```

## What the Script Does

1. Extracts the `.deb` package to `~/myvscode`.
2. Adds an alias to your shell configuration file (`.zshrc` or `.bashrc`).
3. Creates a desktop entry for the custom version of Visual Studio Code.

## Usage

After running the script, you can start Visual Studio Code using the alias:
```bash
code