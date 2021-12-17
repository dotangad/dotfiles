hi clear
set background=dark
if exists("syntax_on")
syntax reset
endif
let g:colors_name = "sv"

highlight Comment ctermfg=green guifg=green
hi NonText guifg=brown

highlight Constant ctermfg=14 cterm=none guifg=#0077ff gui=none
highlight cString guifg=white gui=bold ctermfg=white cterm=bold
highlight cCppString guifg=white gui=bold ctermfg=white cterm=bold
highlight cBracket guibg=red gui=bold ctermbg=red cterm=bold

highlight Identifier guifg=#00c0c0 ctermfg=cyan
highlight Statement ctermfg=3 cterm=bold guifg=#c0c000 gui=bold
highlight PreProc ctermfg=lightblue guifg=#0088ff
highlight Type ctermfg=2 guifg=orange
highlight Special ctermfg=12 guifg=#bb00bb gui=bold
highlight Error ctermbg=9 guibg=#ff0000
highlight Todo ctermfg=4 ctermbg=3 guifg=#000080 guibg=#c0c000
highlight Directory ctermfg=2 guifg=#00c000
highlight StatusLine ctermfg=11 ctermbg=12 cterm=none guifg=#ffff00 guibg=#0000ff gui=none
highlight Normal guifg=#cccc66 guibg=#000000 ctermfg=darkyellow
highlight Search ctermbg=3 guibg=#c0c000
hi operator guifg=pink
hi statement guifg=red ctermfg=red

hi DiffChange guibg=darkgreen
hi DiffText guibg=olivedrab
hi DiffAdd guibg=slateblue
hi DiffDelete guibg=coral 


