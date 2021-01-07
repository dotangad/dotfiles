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
set PATH $HOME/dotfiles/scripts $PATH
set PATH $HOME/bin $PATH
set PATH $HOME/bin/node $PATH
set PATH $HOME/.yarn/bin $PATH
set PATH $HOME/.config/yarn/global/node_modules/.bin $PATH
set PATH $HOME/src/flutter/bin $PATH

function fish_user_key_bindings
  fish_vi_key_bindings
  bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end

# GPG ioctl error
# https://stackoverflow.com/questions/57591432/gpg-signing-failed-inappropriate-ioctl-for-device-on-macos-with-maven
set GPG_TTY (tty)

source ~/dotfiles/aliases.sh

function rc
  source ~/.config/fish/config.fish
end

set -g fisher_path $HOME/.fish_plugins

set -p fish_function_path fish_function_path[1] $fisher_path/functions
set -p fish_complete_path fish_complete_path[1] $fisher_path/completions

for file in $fisher_path/conf.d/*.fish
    builtin source $file 2>/dev/null
end

function fish_greeting
  printf "\n\n"
  fortune | lolcat
  printf "\n\n"
end

# Install tide
# curl -sL git.io/tide | source && tide_install
