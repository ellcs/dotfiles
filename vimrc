" vundle and vundle plugins init
" Install vundle arch via the AUR or git
" yaourt -S vundle
set nocompatible               " be iMproved
filetype off                   " required!
call vundle#rc()
filetype plugin indent on
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
" Easymotion minimal configuration
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap f <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap f <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
