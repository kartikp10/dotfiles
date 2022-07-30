#!/bin/bash

function create_links() {
    echo "creating symlinks to config files"
    local username
    username="$(whoami)"
    rm -rf /Users/"$username"/.config/tmux
    rm -rf /Users/"$username"/.config/nvim
    rm -rf /Users/"$username"/.config/alacritty
 
    ln -s /Users/"$username"/dev/dotfiles/config/tmux /Users/"$username"/.config/tmux
    ln -s /Users/"$username"/dev/dotfiles/config/nvim /Users/"$username"/.config/nvim
    ln -s /Users/"$username"/dev/dotfiles/config/alacritty /Users/"$username"/.config/alacritty
    echo ""
    echo "done"
}

brew upgrade && brew install alacritty neovim tmux
create_links
