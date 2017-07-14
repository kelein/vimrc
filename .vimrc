set nu
set is
set tabstop=4
set guioptions-=T
set guioptions-=m
set smartindent
colorscheme ron
syntax on


" Add Vundle Configure by Kallen, Jan 25 2016
filetype off
set rtp+=$HOME/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

" original repos on github<br>Bundle 'mattn/zencoding-vim'
Bundle 'drmingdrmer/xptemplate'
 
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'bufexplorer.zip'
Bundle 'taglist.vim'
Bundle 'Mark'
Bundle 'The-NERD-tree'
Bundle 'matrix.vim'
Bundle 'closetag.vim'
Bundle 'The-NERD-Commenter'
Bundle 'matchit.zip'
Bundle 'AutoComplPop'
Bundle 'jsbeautify'
Bundle 'YankRing.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'scrooloose/nerdcommenter'

" Golang Plugin
Bundle 'dgryski/vim-godef'
Bundle 'Blackrush/vim-gocode'


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


" Customize Highlight
highlight Comment     cterm=bold gui=bold
highlight LineNr      cterm=bold gui=bold
highlight NonText	  term=bold cterm=bold gui=bold guifg=yellow
highlight Directory   term=bold cterm=bold ctermfg=6 guifg=Cyan
highlight SpecialKey  term=bold cterm=bold ctermfg=4 gui=bold guifg=Cyan
highlight Statement   term=bold cterm=bold ctermfg=3 guifg=lightblue
highlight Title       term=bold cterm=bold ctermfg=5 gui=bold guifg=darkgrey
highlight Special     term=bold cterm=bold ctermfg=1 guifg=yellow
highlight String	  term=underline cterm=bold ctermfg=5 gui=bold guifg=cyan
highlight Constant	  term=underline cterm=bold ctermfg=5 gui=bold guifg=cyan
highlight PreProc 	  term=underline cterm=bold ctermfg=4 guifg=Pink2
highlight Type        term=underline cterm=bold ctermfg=2 gui=bold guifg=seagreen
highlight WarningMsg  term=standout cterm=bold ctermfg=1 guifg=Black guibg=Green
highlight Question    term=standout cterm=bold ctermfg=2 gui=bold guifg=Green
