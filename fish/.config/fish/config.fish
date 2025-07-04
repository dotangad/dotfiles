if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x LANG en_US.UTF-8
set -x TERM xterm-256color
set -x GOPATH $HOME/Code/go
set -x GOBIN $HOME/Code/go/bin
set -x EDITOR nvim
set -x ZK_NOTEBOOK_DIR $HOME/Notes
# set -x PAGER "nvim -"

fish_add_path $GOBIN
fish_add_path $HOME/dotfiles/scripts
fish_add_path $HOME/bin
fish_add_path $HOME/.rvm/bin
fish_add_path $HOME/.deno/bin

function fish_greeting
    printf "\n\n"
    fortune
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
# rvm default

# Theme
fish_config theme choose "Rosé Pine Moon"

# Wasmer
export WASMER_DIR="/Users/angad/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# Ocaml
source /Users/angad/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

fish_add_path /usr/local/smlnj/bin

fish_add_path /Users/angad/.rbenv/versions/3.3.0/bin

source $HOME/.cargo/env.fish

export PATH="/Users/angad/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/angad/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
