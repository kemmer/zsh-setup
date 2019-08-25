# zsh-setup
Framework-like structure for organizing different shell configurations. Optimized for ZSH (with Oh My Zsh framework).

## Highlights
- Organized structure for aliases, custom functions, environment variables
- Custom alias and functions that I use
- Inclusion and configuration handler for sensitive scripts that are ignored by VCS

## Installation
1. First, clone this repo to some desired folder that will hold all your configuration. This dir we call `SHCONFIG_PATH`.

2. Create a `sensitive.zsh` file inside `SHCONFIG_PATH`. Use this file if you want to hold sensitive functions and env vars. Additionally, you can use this file to include other extra files. Edition of this file and others prefixed by `sensitive-` is supported by `config-sensitive [SUFFIX]`.

3. Then, these variables need to be defined in your `.zshrc` file:
  - `SHCONFIG_PATH`: The folder that holds the files from this repo
  - `SHSTORAGE_PATH`: The folder for storing logs and other info (used in functions.zsh)

4. After that, include the line for sourcing the `boot.zsh` file in your `.zshrc` file: `source $SHCONFIG_PATH/boot.zsh`

__Note__: This configurations are optimized for macOS environments. If you wish to use it on linux distributions you would need sightly adapt it.

