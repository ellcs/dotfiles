" vundle and vundle plugins init " Install vundle arch via the AUR or git " yaourt -S vundle
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
Plugin 'posva/vim-vue'
Plugin 'godlygeek/tabular'
Plugin 'easymotion/vim-easymotion'
Plugin 'plasticboy/vim-markdown'
Plugin 'ntpeters/vim-better-whitespace'
Bundle 'vim-ruby/vim-ruby'
" Git
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
" File browser
Bundle 'scrooloose/nerdtree'
" Fuzzy searcher
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
" Git in file browser
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'rhysd/open-pdf.vim'
Plugin 'atelierbram/vim-colors_atelier-schemes'
Bundle 'ervandew/supertab'
" Checker
Bundle 'vim-syntastic/syntastic'
Bundle 'junkblocker/git-time-lapse'
Plugin 'vim-airline/vim-airline'
Plugin 'lervag/file-line'
Plugin 'jceb/vim-orgmode'

autocmd BufNewFile,BufRead *.vue   set syntax=html
" autostart NERDTree
" autocmd vimenter * NERDTree
autocmd VimEnter * if argc() == 0 | NERDTree | endif
let g:NERDTreeDirArrows=0

" this command opens your browser, which is loading current file
" markdown files might be represented via browserapps
autocmd BufEnter *.md exe 'noremap <F5> :! chromium %:p<CR>'

let g:pdf_convert_on_read=1
let g:pdf_convert_on_edit=1

" Remove whitespaces on save
autocmd BufWritePre * StripWhitespace


nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
noremap <F2> :NERDTreeFocus<CR>
noremap <F3> :NERDTreeFind<CR>
nmap    <F4> <Plug>(easymotion-overwin-f)
nmap    <F5> :TagbarToggle<CR>
map     <F6> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
noremap f :Files<CR>

set laststatus=2
set shiftwidth=2
set tabstop=2
set number
set hlsearch
set expandtab
set cursorcolumn
set cursorline
let &colorcolumn="80,100,".join(range(120,999),",")
set background=dark
set clipboard=unnamed
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

let g:airline#extensions#tabline#enabled = 1
let FZF_PREVIEW_HEIGHT=12
