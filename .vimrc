" dotangad's vimrc
" Available at https://github.com/dotangad/dotfiles

" Enable file specific syntax highlighting
syntax enable
filetype indent on

" Remove delays while switching modes
set timeoutlen=1000 ttimeoutlen=10

" Map leader to ","
let mapleader = ","

" Setup indentation, two spaces
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set cindent

" Enable backups in /tmp
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

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
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'mattn/emmet-vim'
Plug 'leshill/vim-json'
Plug 'editorconfig/editorconfig-vim'
Plug 'mkitt/tabline.vim'
Plug 'jreybert/vimagit'
" Auto close brackets
Plug 'jiangmiao/auto-pairs'
" Real-time linting and code fixing
Plug 'w0rp/ale'
call plug#end()

" Enable tabline
let g:airline#extensions#tabline#enabled = 1
" Use better glyphs
let g:airline_powerline_fonts = 1
" Change theme
let g:airline_theme = 'dracula'

" Show hidden files in ctrl-p
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden --follow
  \ --ignore .git
  \ -g ""'

" Tab to activate emmet, make it work with jsx
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

" ALE settings
let g:ale_change_sign_column_color = 1
" Fix files with prettier, and then eslint.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Fix files on save 
let g:ale_fix_on_save = 1
let b:ale_linters = {'javascript': ['eslint']}
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_set_highlights = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_error_str = 'e'
let g:ale_echo_msg_warning_str = 'w'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
