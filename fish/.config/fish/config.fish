if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x LANG en_US.UTF-8
set -x TERM xterm-256color
set -x GOPATH $HOME/Code/go
set -x GOBIN $HOME/Code/go/bin
set -x EDITOR "nvim"
set -x ZK_NOTEBOOK_DIR $HOME/Notes

fish_add_path $GOBIN
fish_add_path $HOME/dotfiles/scripts
fish_add_path $HOME/bin

function fish_greeting
  printf "\n\n"
  fortune | lolcat
  printf "\n\n"
end

# FZF respect .gitignore
set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'

# NVM stuff
# set -x NVM_DIR ~/.nvm
# nvm use lts/hydrogen --silent

# Theme
fish_config theme choose "Rosé Pine Moon"
