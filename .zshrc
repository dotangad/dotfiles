export LANG=en_US.UTF-8

# Emacs keybindings
bindkey -e

export GOPATH="$HOME/code/go"
export GOBIN="$HOME/code/go/bin"

export EDITOR="vim"

export PATH="$HOME/flutter/bin:/usr/local/bin:$GOBIN:/usr/local/sbin:$HOME/.ghcup/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$HOME/bin/node:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

source $HOME/dotfiles/helpers.sh
source $HOME/dotfiles/aliases.sh
source $HOME/dotfiles/newuser.sh

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U promptinit; promptinit
prompt spaceship

# GPG ioctl error
# https://stackoverflow.com/questions/57591432/gpg-signing-failed-inappropriate-ioctl-for-device-on-macos-with-maven
GPG_TTY=$(tty)
export GPG_TTY