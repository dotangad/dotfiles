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

# Prompt
source $HOME/dotfiles/shrink_path.zsh
setopt prompt_subst
PROMPT_USERNAME='λ'
PROMPT_COLONS='%B%F{124}::%f%b'
PROMPT_DIRPATH='%B%F{34}$(shrink_path -f)%f%b'
PROMPT_RETCODE='%B%(?..%F{124}1%f )%b'
PROMPT_ANGLEBRACK='%B%F{69}%(!.#.>>)%f%b'
# TODO: add git branch indicator
PROMPT="$PROMPT_USERNAME "
PROMPT+="$PROMPT_COLONS "
PROMPT+="$PROMPT_DIRPATH "
PROMPT+="$PROMPT_RETCODE"
PROMPT+="$PROMPT_ANGLEBRACK "


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

# GHC stuff
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# OPAM stuff
test -r /Users/dotangad/.opam/opam-init/init.zsh && . /Users/dotangad/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

