set LANG en_US.UTF-8
set TERM xterm-256color

set -x GOPATH $HOME/Code/go
set -x GOBIN $HOME/Code/go/bin

set -x DOTANGAD_OS ""
switch (uname)
  case Linux
    set -x DOTANGAD_OS "LINUX"
    source $HOME/.config/fish/linux.fish
    set PATH $HOME/.config/composer/vendor/bin $PATH
    set PATH /usr/local/go/bin $PATH
    # https://github.com/baskerville/bspwm/issues/763
    export DISPLAY=:0
  case Darwin
    set -x DOTANGAD_OS "MACOS"
    source $HOME/.config/fish/macos.fish
  case '*'
    set -x DOTANGAD_OS "UNKNOWN"
end

set -x EDITOR "nvim"

fish_add_path $GOBIN
fish_add_path $HOME/dotfiles/scripts
fish_add_path $HOME/bin

# GPG ioctl error
# https://stackoverflow.com/questions/57591432/gpg-signing-failed-inappropriate-ioctl-for-device-on-macos-with-maven
# set -x GPG_TTY (tty)

function fish_greeting
  printf "\n\n"
  fortune
  printf "\n\n"
end

# FZF respect .gitignore
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'

source colors.fish
