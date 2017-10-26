set nu
set is
set tabstop=4
set guioptions-=T
set guioptions-=m
set smartindent
colorscheme ron
syntax on


" Vim Config for Myself Environment
" Config once and use for anywhere.
" Kallen, Jan 25 2015
" Add Vundle Configure
filetype off
set rtp+=$HOME/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" original vim-scripts repos on github'
Bundle 'L9'
Bundle 'Mark'
Bundle 'jsbeautify'
Bundle 'matrix.vim'
Bundle 'FuzzyFinder'
Bundle 'matchit.zip'
Bundle 'taglist.vim'
Bundle 'closetag.vim'
Bundle 'YankRing.vim'
"Bundle 'AutoComplPop'
Bundle 'The-NERD-tree'
Bundle 'bufexplorer.zip'
Bundle 'The-NERD-Commenter'
Bundle 'Yggdroot/indentLine'
Bundle 'Raimondi/delimitMate'
Bundle 'drmingdrmer/xptemplate'
Bundle 'scrooloose/nerdcommenter'


" Golang Plugin
"Bundle 'dgryski/vim-godef'
"Bundle 'Blackrush/vim-gocode'
Plugin 'fatih/vim-go'
let g:go_fmt_command = "gofmt"
au BufRead,BufNewFile *.go set filetype=go


" NerdTree Plugin
Bundle 'https://github.com/scrooloose/nerdtree.git'
let g:NERDTreeDirArrows = 1
let g:NERDTreeGlyphReadOnly = "RO"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" Key Bonding of NerdTree
nmap <F5> :NERDTreeToggle<CR>


" TagBar Plugin
Bundle 'majutsushi/tagbar'
nmap <F6> :TagbarToggle<CR>


" YouCompleteMe Plugin
Bundle 'https://github.com/Valloric/YouCompleteMe.git'
let g:ycm_seed_identifiers_with_syntax=1


filetype plugin indent on     " required!
autocmd FileType python set omnifunc=pythoncomplete#Complete


" Code Folding
Plugin 'tmhedberg/SimpylFold'
set foldmethod=indent
set foldlevel=99
nmap <space> za


" Highlight
let python_highlight_all=1


" YankRing
let g:yankring_history_dir = '/var/log/yank'


" indentLine Plugin
" let g:indentLine_enabled = 0
" let g:indentLine_setColors = 0
" let g:indentLine_color_term = 144


" Backspace Config
set nocompatible
set backspace=indent,eol,start


" Customize Highlight
highlight Comment     cterm=bold gui=bold
highlight LineNr      cterm=bold gui=bold
highlight NonText     term=bold cterm=bold gui=bold guifg=yellow
highlight Directory   term=bold cterm=bold ctermfg=6 guifg=Cyan
highlight SpecialKey  term=bold cterm=bold ctermfg=4 gui=bold guifg=Cyan
highlight Statement   term=bold cterm=bold ctermfg=3 guifg=lightblue
highlight Title       term=bold cterm=bold ctermfg=5 gui=bold guifg=darkgrey
highlight Special     term=bold cterm=bold ctermfg=1 guifg=yellow
highlight String      term=underline cterm=bold ctermfg=5 gui=bold guifg=cyan
highlight Constant    term=underline cterm=bold ctermfg=5 gui=bold guifg=cyan
highlight PreProc     term=underline cterm=bold ctermfg=4 guifg=Pink2
highlight Type        term=underline cterm=bold ctermfg=2 gui=bold guifg=seagreen
highlight WarningMsg  term=standout cterm=bold ctermfg=1 guifg=Black guibg=Green
highlight Question    term=standout cterm=bold ctermfg=2 gui=bold guifg=Green


" TagBar For Golang
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }
