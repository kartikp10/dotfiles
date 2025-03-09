eval "$(starship init zsh)"

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

