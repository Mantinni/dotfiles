# ███╗   ███╗███████╗
# ████╗ ████║██╔════╝
# ██╔████╔██║███████╗ Mantas Sabeckis (Mantinni)
# ██║╚██╔╝██║╚════██║
# ██║ ╚═╝ ██║███████║ https://github.com/Mantinni/
# ╚═╝     ╚═╝╚══════╝

EDITOR="vim"

[[ $- != *i* ]] && return

# History settings
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Fancy prompt
case "$TERM" in
  xterm-color|*-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

if [ -f ~/.secret_aliases ]; then
  . ~/.secret_aliases
fi
