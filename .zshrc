export ZSH="/home/mantas/.oh-my-zsh"
ZSH_THEME="robbyrussell"
#ENABLE_CORRECTION="true"
#plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='vim'

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=10000

# Autocompletion settings
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Key bindings
bindkey -s '^o' 'ranger\n'

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

if [ -f ~/.secret_aliases ]; then
  . ~/.secret_aliases
fi

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export GO111MODULE=on
