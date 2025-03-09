eval "$(starship init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# navigation
mkcd() { mkdir -p "$@" && cd "$@"; }
