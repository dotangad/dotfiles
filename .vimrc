" make vim great again
set nocompatible

" don’t show the intro message when starting vim
set shortmess=atI

" start scrolling three lines before the horizontal window border
set scrolloff=3

" enable syntax highlighting
syntax enable

" almost no delays in switching modes
set timeoutlen=1000 ttimeoutlen=10

" set visual spaces in a tab
set tabstop=2

" set the number of spaces in a tab while editing
set softtabstop=2

" enable backups in /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" show line numbers
set number

" go one character beyond the end of a line
set virtualedit+=onemore

" better tab switching
map <leader>h :tabr<cr>
map <leader>l :tabl<cr>
map <leader>j :tabp<cr>
map <leader>k :tabn<cr>

" show the last used command in the bottom right
set showcmd

" enable language specific indents from indent files in ~/.vim/indent/
filetype indent on

" visual autocompleting for the command menu
set wildmenu

" highlight matching brackets [{()}]
set showmatch

" super search
set incsearch " search as characters are entered
set hlsearch " highlight matches

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" move vertically over 'fake' lines
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

" \ is too far away to be the leader
let mapleader=","

" jk is escape
inoremap jk <esc>

" automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/goyo.vim'
Plug 'pangloss/vim-javascript' 
Plug 'leafgarland/typescript-vim' 
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'yegappan/mru'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" set dark mode in terminal, light in gvim or macvim
if has("gui_running")
  set background=light
else
  set background=dark
endif

" show hidden files by default in nerdtree
let NERDTreeShowHidden=1

" comma-g toggles Goyo
nnoremap <silent> <leader>z :Goyo<cr>

" comma-r toggles Most Recently Used
nnoremap <silent> <leader>r :MRU<cr>

" comma-t toggles NERDTree
nnoremap <silent> <leader>t :NERDTreeToggle<cr>
