export LANG=en_US.UTF-8
export TERM=xterm-256color

# Emacs keybindings
bindkey -e

export GOPATH="$HOME/src/go"
export GOBIN="$HOME/src/go/bin"

export EDITOR="nvim"

export PATH="$HOME/flutter/bin:/usr/local/bin:$GOBIN:/usr/local/sbin:$HOME/.ghcup/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$HOME/bin/node:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

source $HOME/dotfiles/helpers.sh
source $HOME/dotfiles/aliases.sh
source $HOME/dotfiles/newuser.sh

# FZF stuff
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --ignore-case --hidden --type f'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# autoload -U promptinit; promptinit
# prompt pure
# eval "$(starship init zsh)"
source $HOME/dotfiles/shrink_path.zsh
setopt prompt_subst
PS1='%n %B%F{124}::%f %F{34}$(shrink_path -f)%f %(?..%F{124}1 )%F{69}%(!.#.>>)%f%b '


# GPG ioctl error
# https://stackoverflow.com/questions/57591432/gpg-signing-failed-inappropriate-ioctl-for-device-on-macos-with-maven
GPG_TTY=$(tty)
export GPG_TTY

# GPG commit signing
# https://medium.com/@timmywil/sign-your-commits-on-github-with-gpg-566f07762a43
# if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
#     source ~/.gnupg/.gpg-agent-info
#     export GPG_AGENT_INFO
# else
#     eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
# fi
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
