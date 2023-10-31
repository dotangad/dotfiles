if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x LANG en_US.UTF-8
set -x TERM xterm-256color
set -x GOPATH $HOME/Code/go
set -x GOBIN $HOME/Code/go/bin
set -x EDITOR "nvim"
set -x ZK_NOTEBOOK_DIR $HOME/Notes
# set -x PAGER "nvim -"

fish_add_path $GOBIN
fish_add_path $HOME/dotfiles/scripts
fish_add_path $HOME/bin
fish_add_path $HOME/.rvm/bin

function fish_greeting
  printf "\n\n"
  fortune | lolcat
  printf "\n\n"
end

# FZF respect .gitignore
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'

# NVM stuff
set -x NVM_DIR ~/.nvm
nvm use 20 --silent

# pyenv
pyenv init - | source

# rvm
rvm default

# Theme
fish_config theme choose "Rosé Pine Moon"

# Wasmer
export WASMER_DIR="/Users/angad/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
