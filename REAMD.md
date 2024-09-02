nvim version:
NVIM v0.9.5
Build type: Release
LuaJIT 2.1.0-beta3


SETUP
1. command: sudo apt update
1a. install: git
2. command: nvim .
-> This will trigger the system to install nvim
-> After installing, this will trigger for the system to restart (but still working if not, probably...)
3. command: sudo apt install ripgrep
4. add in .bashrc/.zshrc: alias vim='nvim'
5. Install nvm and node
6. Follow Primeagem Video
-> Note that he started in `.config` folder
7. Once lsp is installed:
- :Mason
- typescript-language-server
- pyright 
- etc2

NVIM Defaults Before SETUP:
1. % -> create new file
2. d -> create new directory
3. :Ex -> back to explorer
4. = -> indent current line
4a. =ap -> indent current block

Git Resources:
1. https://github.com/wbthomason/packer.nvim
2. https://github.com/nvim-telescope/telescope.nvim

Search and Replace
1.`:%s/<text_to_replace>/<the_new_text>/g`
- %s -> Search All in file
- s -> Search in current line
- g -> global
- gi -> global ignore case
- gc -> prompts before each replacement
2.`:%s/<text_to_replace>/<new_text>` 
- first instances per line only
