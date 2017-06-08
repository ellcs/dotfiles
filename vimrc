" vundle and vundle plugins init
" Install vundle arch via the AUR or git
" yaourt -S vundle
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
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'atelierbram/vim-colors_atelier-schemes'
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

" Remove whitespaces on save
autocmd BufWritePre * StripWhitespace

noremap <F2> :NERDTreeFocus<CR>
noremap <F3> :NERDTreeFind<CR>
noremap <F4> :NERDTreeClose<CR>:set nonumber<CR>:set paste<CR>
nmap    <F4> <Plug>(easymotion-overwin-f)
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
" Easymotion minimal configuration
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap f <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" DOC
"
" zi	switch folding on or off
" za	toggle current fold open/closed
" zc	close current fold
" zR	open all folds
" zM	close all folds
" zv	expand folds to reveal cursor
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
