#!/bin/bash

function create_links() {
    echo "creating symlinks to config files"
    echo "------------ Creating symlinks to config files -------------------"
    local username
    username="$(whoami)"
    rm -rf /Users/"$username"/.config/tmux
    rm -rf /Users/"$username"/.config/nvim
    rm -rf /Users/"$username"/.config/alacritty
 
    ln -s /Users/"$username"/dev/dotfiles/config/tmux /Users/"$username"/.config/tmux
    ln -s /Users/"$username"/dev/dotfiles/config/nvim /Users/"$username"/.config/nvim
    ln -s /Users/"$username"/dev/dotfiles/config/alacritty /Users/"$username"/.config/alacritty
    echo ""
}

function install_apps() {
    echo "------------------------ Installing apps -------------------------"
    brew upgrade
    brew install --cask rectangle
    brew install --cask visual-studio-code
    brew install --cask obsidian
    brew install --cask spotify
    brew install --cask alfred
    brew install --cask postman
    brew install --cask whatsapp
    brew install docker

    echo "------------------------ Install manually ------------------------"
    echo "Logi Options: https://www.logitech.com/en-us/software/options.html"
}

function dev_tools() {
    brew upgrade 
    brew install alacritty neovim tmux
    brew tap homebrew/cask-fonts
    brew install --cask  font-meslo-lg-nerd-font
    brew install romkatv/powerlevel10k/powerlevel10k
    echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
    brew install pyenv
    brew install pipenv
    brew install nvm
    brew install go
    brew install fzf
    brew install ripgrep
    brew install tldr
    brew install awscli
    echo ""
    echo "Run p10k configure"
}

if [[ -z "$1" ]]; then
    echo "Setting up everything from scratch"
    echo ""
    dev_tools
    create_links
    install_apps    
elif [[ "$1" == "dev_tools"]]; then
    dev_tools
elif [[ "$1" == "create_links"]]; then
    create_links
elif [[ "$1" == "install_apps"]]; then
    install_apps    
else
    echo "Unrecognized command. Available commands are: "
    echo "dev_tools"
    echo "create_links"
    echo "install_apps"
fi
