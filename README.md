# dotfiles 🏗

Dotfiles on MacOS

## Installation

To setup from scratch run:

```bash
# Run chmod u+x to amke the script executable first 
./install.sh
```

To selectively install use the following commands:

```bash
# Install development tools: alacritty, tmux, nvim, python, nvm, golang and others 
./install.sh dev_tools

# Create symlinks for config files
./install.sh create_links

# Install applications: rectangle, obsidian, vscode, spotify, postman, docker, alfred and others
./install.sh install_apps
```

## Todo

Neovim

- [x] Fix format command
- [x] Fix diagnostic info
- [x] Add auto pair match completion
- [x] Cleanup plugins.lua
- [x] Fix diagnostics for golang
- [x] Configure golang debugger 
- [ ] Integrate telescope with dap https://github.com/nvim-telescope/telescope-dap.nvim
