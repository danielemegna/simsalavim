set nocompatible

" Vundle

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'

" General Config

set tabstop=2
set shiftwidth=2
set backspace=2
set autoindent
set expandtab
set number
colorscheme ron
let html_no_rendering = 1
syntax on

"" Plugins settings

" NERD Tree

map <C-l> :NERDTreeToggle<CR>

let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeHighlightCursorline=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeChDirMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeHijackNetrw=0

" CtrlP

let g:ctrlp_working_path_mode = 0
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = {'dir':  'vendor/bundler$\|target$\|\.git$\|\.hg$\|\.svn$', 'file': '\.exe$\|\.so$\|\.dll$' }
