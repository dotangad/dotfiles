" dotangad's vimrc
" Available at https://github.com/dotangad/dotfiles

" Death to vi 
set nocompatible

" Enable file specific syntax highlighting
syntax enable
filetype plugin indent on

" Remove delays while switching modes
set timeoutlen=1000 ttimeoutlen=10

" Map leader to ","
let mapleader = ","

" Setup indentation, two spaces
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set cindent

" Press q to exit help mode
au FileType help nnoremap <buffer> q :q<CR>

" Backups are annoying
set nobackup
set nowritebackup
set noswapfile

" Show line numbers
set number

" Show the last command in the bottom right
set showcmd

" Visual autocompletion for the command menu
set wildmenu

" Highlight matching brackets [{()}]
set showmatch

" Make search great again
set incsearch    " Search as the characters are entered
set hlsearch     " Highlight matches

" Turn off search highlight 
nnoremap <leader><space> :nohlsearch<CR>

" 0 moves to the first character of the line
nnoremap 0 ^

" Move over visual lines
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" jk is escape  
inoremap jk <Esc>

" Close LocationList with <leader>lcl
nnoremap <leader>lcl :lcl<CR>
inoremap <C-l> <Esc>:lcl<CR>i

" Enter normal mode and save file with C-s
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-s> :w<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Edit and reload vimrc
nnoremap <leader>ve :tabe ~/.vimrc<CR>
nnoremap <leader>vr :source ~/.vimrc<CR>

" Set dark mode in terminal, light in gvim or macvim
if has("gui_running")
  set background=light
else
  set background=dark
endif

" Automatically install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/goyo.vim'
Plug 'yegappan/mru'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'mattn/emmet-vim'
Plug 'leshill/vim-json'
Plug 'editorconfig/editorconfig-vim'
Plug 'jreybert/vimagit'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'posva/vim-vue'
Plug 'dart-lang/dart-vim-plugin'
" Auto close brackets
Plug 'jiangmiao/auto-pairs'
call plug#end()

" Show hidden files in ctrl-p
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --follow
  \ --ignore .git
  \ -g ""'

" Tab to activate emmet, make it work with jsx
au Filetype javascript nnoremap ,e :Emmet 
let g:user_emmet_leader_key = '<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" Show hidden files in NERDTree
let NERDTreeShowHidden = 1
nnoremap <leader>t :NERDTreeToggle<CR>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Fix ^G in display
let g:NERDTreeNodeDelimiter = "\u00a0"

" comma-g toggles Goyo
nnoremap <silent> <leader>g :Goyo<cr>
" comma-r toggles Most Recently Used
nnoremap <silent> <leader>r :MRU<CR>

" Use goimports instead of gofmt for formatting
let g:go_fmt_command = "goimports"
" Setup gopls
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
