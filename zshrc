export ZSH="$HOME/.dotfiles/oh-my-zsh"
ZSH_THEME="robbyrussell"

# plugins
plugins=(
  git
  extract
)

source $ZSH/oh-my-zsh.sh

# aliases
alias zshrc="vim ~/.zshrc"
alias rm="rm -r"
alias cp="cp -r"

