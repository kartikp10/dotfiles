eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export EDITOR=/opt/homebrew/bin/nvim

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# navigation
mkcd() { mkdir -p "$@" && cd "$@"; }
alias ll="ls -lart"

# git
alias gst="git status"
alias ga="git add"
alias gb="git branch"
alias gco="git checkout"
alias gcmsg="git commit -m"
alias grs="git restore"
alias gl="git pull"
alias gp="git push"


# set home
export XDG_CONFIG_HOME="/Users/kpande/.config"

