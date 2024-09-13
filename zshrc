# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# ZSH Syntax Highlight
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

eval "$(starship init zsh)"

# AWS Completeion
complete -C '/opt/homebrew/bin//aws_completer' aws
