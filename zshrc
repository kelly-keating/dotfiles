export ZSH="$HOME/.dotfiles/oh-my-zsh"
ZSH_THEME="robbyrussell"

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

# Ruby gems
if [ -d "$HOME/.gems" ]; then
	export GEM_HOME=$HOME/.gems
	export PATH=$GEM_HOME/bin:$PATH
fi

# aliases
alias zshrc="vim ~/.zshrc"
alias rm="rm -r"
alias cp="cp -r"

