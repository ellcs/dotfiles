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
set t_Co=256
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
filetype plugin on
filetype indent on
filetype on
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'plasticboy/vim-markdown'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Bundle 'L9'
" Bundle 'FuzzyFinder'
Bundle 'ervandew/supertab'
Bundle 'vim-syntastic/syntastic'

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

" Remove whitespaces on save
autocmd BufWritePre * StripWhitespace

noremap <F2> :NERDTreeFocus<CR>
noremap <F3> :NERDTreeFind<CR>
noremap f :Files<CR>

set laststatus=2
set shiftwidth=2
set tabstop=2
set number
set hlsearch
set expandtab
set background=dark
colorscheme Atelier_ForestDark
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
=======

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
" Easymotion minimal configuration
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <F4> <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap f <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
        map <Leader>k <Plug>(easymotion-k)

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "R",
    \ "Unmerged"  : "U",
    \ "Deleted"   : "D",
    \ "Dirty"     : "P",
    \ "Clean"     : "C",
    \ 'Ignored'   : 'I',
    \ "Unknown"   : "?"
    \ }

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1
