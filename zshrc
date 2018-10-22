export ZSH="$HOME/.dotfiles/oh-my-zsh"
ZSH_CUSTOM="$HOME/.dotfiles/zsh-custom"
ZSH_THEME="zero"

# plugins
plugins=(
  git
  extract
)

source $ZSH/oh-my-zsh.sh

# add Android SDK plataform tools to path
if [ -d "/opt/platform-tools" ]; then
	export PATH="/opt/platform-tools/:$PATH"
fi

# NodeJS
if [ -d "/opt/nodejs" ]; then
	export PATH="/opt/nodejs/bin/:$PATH"
fi

# aliases
alias zshrc="vim ~/.zshrc"
alias rm="rm -r"
alias cp="cp -r"

