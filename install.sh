#!/bin/bash

function create_links() {
    echo "creating symlinks to config files"
    echo "------------ Creating symlinks to config files -------------------"
    local username
    username="$(whoami)"
    mkdir -p /Users/"$username"/.config
    rm -rf /Users/"$username"/.config/tmux
    rm -rf /Users/"$username"/.config/nvim
    rm -rf /Users/"$username"/.config/alacritty
 
    ln -s /Users/"$username"/dev/dotfiles/config/tmux /Users/"$username"/.config/tmux
    ln -s /Users/"$username"/dev/dotfiles/config/nvim /Users/"$username"/.config/nvim
    ln -s /Users/"$username"/dev/dotfiles/config/alacritty /Users/"$username"/.config/alacritty
    ln -s /Users/"$username"/dev/dotfiles/config/vscode_vim/vimrc /Users/"$username"/.config/vscode_vim/vimrc
    echo "Done creting symlinks"
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
    brew install --cask docker
    echo "Done installing apps"
    echo ""

    echo "------------------------ Install manually ------------------------"
    echo "Logi Options: https://www.logitech.com/en-us/software/options.html"
    echo ""
}

function dev_tools() {
    brew upgrade 
    brew install alacritty neovim tmux
    git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    brew tap homebrew/cask-fonts
    brew install --cask  font-meslo-lg-nerd-font
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    brew install romkatv/powerlevel10k/powerlevel10k
    echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >> ~/.zshrc
    brew install gh
    brew install pyenv
    brew install pipenv
    brew install nvm
    brew install go
    brew install rust
    brew install terraform
    brew install fzf
    /opt/homebrew/opt/fzf/install
    brew install ripgrep
    brew install tldr
    brew install awscli
    brew install wget
    brew install tree
    brew install todo-txt
    echo ""
    echo "Run p10k configure"
    echo "Done installing dev tools"
    echo ""
}

function echo_user_conf() {
    echo 'export EDITOR="/usr/local/bin/nvim"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ZRC=~/.zshrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

if [[ $PATH != *$GOPATH* ]]; then
    export PATH="${GOPATH}/bin:${PATH}"
fi

if [[ $PATH != *$GOROOT* ]]; then
    export PATH="${GOROOT}/bin:${PATH}"
fi
    '
}

if [[ -z "$1" ]]; then
    echo "Setting up everything from scratch"
    echo ""
    dev_tools
    create_links
    install_apps    
    echo ""
    echo "Add the following to your .zshrc file:"
    echo ""
    echo_user_conf
elif [[ "$1" == "dev_tools" ]]; then
    dev_tools
elif [[ "$1" == "create_links" ]]; then
    create_links
elif [[ "$1" == "install_apps" ]]; then
    install_apps    
elif [[ "$1" == "echo_user_conf" ]]; then
    echo_user_conf
else
    echo "Unrecognized command. Available commands are: "
    echo "dev_tools"
    echo "create_links"
    echo "install_apps"
    echo "echo_user_conf"
fi
