" vundle and vundle plugins init
" Install vundle arch via the AUR or git
" yaourt -S vundle
set nocompatible               " be iMproved
filetype off                   " required!
call vundle#rc()
filetype plugin indent on
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Bundle 'scrooloose/nerdtree'

" autostart NERDTree
autocmd vimenter * NERDTree
let g:NERDTreeDirArrows=0

" this command opens your browser, which is loading current file
" markdown files might be represented via browserapps
autocmd BufEnter *.md exe 'noremap <F5> :! chromium %:p<CR>'

set laststatus=2
set number
set expandtab
set tabstop=2
colorscheme elflord
syntax on
