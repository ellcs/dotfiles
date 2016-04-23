" vundle is a plugin manager
" Install vundle arch via the AUR or git
" After vundle installation run command:
"
"   :PluginInstall
"
" Below listed Plugins and Bundles will be installed.
"
set nocompatible               " be iMproved
filetype off                   " required!
call vundle#rc()
filetype plugin indent on
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Bundle 'scrooloose/nerdtree'

" autostart NERDTree
autocmd vimenter * NERDTree
let g:NERDTreeDirArrows=0

" this command opens your browser, which is loading current file
" markdown files might be represented via browserapps
autocmd BufEnter *.md exe 'noremap <F5> :! chromium %:p<CR>'

" Makes a border at specified column
if (exists('+colorcolumn'))
    set colorcolumn=80
    highlight ColorColumn ctermbg=9
endif

set laststatus=2
set number
set expandtab
set tabstop=2
colorscheme elflord
syntax on

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
nmap f <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
nmap f <Plug>(easymotion-overwin-f2)
"
" " Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
"
" " JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
