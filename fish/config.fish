set LANG en_US.UTF-8
set TERM xterm-256color

set GOPATH $HOME/src/go
set GOBIN $HOME/src/go/bin

set EDITOR "nvim"

set PATH $HOME/flutter/bin $PATH
set PATH /usr/local/bin $PATH
set PATH $GOBIN $PATH
set PATH /usr/local/sbin $PATH
set PATH $HOME/.ghcup/bin $PATH
set PATH $HOME/.local/bin $PATH
set PATH $HOME/bin $PATH
set PATH $HOME/bin/node $PATH
set PATH $HOME/.yarn/bin $PATH
set PATH $HOME/.config/yarn/global/node_modules/.bin $PATH

# GPG ioctl error
# https://stackoverflow.com/questions/57591432/gpg-signing-failed-inappropriate-ioctl-for-device-on-macos-with-maven
set GPG_TTY (tty)

# GPG commit signing
# https://medium.com/@timmywil/sign-your-commits-on-github-with-gpg-566f07762a43
# if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
#     source ~/.gnupg/.gpg-agent-info
#     export GPG_AGENT_INFO
# else
#     eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
# fi

# GHC stuff
# [ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# OPAM stuff
test -r /Users/dotangad/.opam/opam-init/init.fish && . /Users/dotangad/.opam/opam-init/init.fish > /dev/null 2> /dev/null || true

source ~/dotfiles/aliases.sh

function rc
  source ~/.config/fish/config.fish
end
