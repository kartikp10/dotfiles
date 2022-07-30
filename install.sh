#!/bin/bash

function create_links() {
    echo "creating symlinks to config files"
    local username
    username="$(whoami)"
    ln -s /Users/"$username"/dev/dotfiles/config/tmux /Users/"$username"/.config/tmux
    ln -s /Users/"$username"/dev/dotfiles/config/nvim /Users/"$username"/.config/nvim
    echo ""
    echo "done"
}

brew upgrade && brew install alacritty neovim tmux
create_links
