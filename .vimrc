" enable syntax highlighting
syntax enable

" almost no delays in switching modes
set timeoutlen=1000 ttimeoutlen=10

" set visual spaces in a tab
set tabstop=2
" set the number of spaces in a tab while editing
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set cindent

" enable backups in /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" show line numbers
set number

" \ is too far away to be the leader
let mapleader=","

" better tab switching
map <leader>h :wincmd h<cr>
map <leader>l :wincmd l<cr>
map <leader>j :wincmd j<cr>
map <leader>k :wincmd k<cr>

" show the last used command in the bottom right
set showcmd

" enable language specific indents from indent files in ~/.vim/indent/
filetype indent on

" visual autocompletion for the command menu
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
Plug 'yegappan/mru'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'mattn/emmet-vim'
Plug 'vim-syntastic/syntastic'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
call plug#end()

" Extra stuff for emmet
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Tell syntastic what eslint binary to usele
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" set dark mode in terminal, light in gvim or macvim
if has("gui_running")
  set background=light
else
  set background=dark
endif

" show hidden files by default in nerdtree
let NERDTreeShowHidden=1

" comma-g toggles Goyo
nnoremap <silent> <leader>g :Goyo<cr>

" comma-r toggles Most Recently Used
nnoremap <silent> <leader>r :MRU<cr>

" comma-t toggles NERDTree
nnoremap <silent> <leader>t :NERDTreeToggle<cr>

" comma-m saves the file
nnoremap <silent> <leader>q :q<cr>
nnoremap <silent> <leader>w :w<cr>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Use goimports instead of gofmt for formatting
let g:go_fmt_command = "goimports"

" TODO
" Setup vim for JavaScript - prettier, eslint
