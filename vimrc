set nocompatible

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'elixir-lang/vim-elixir'
Plugin 'udalov/kotlin-vim'

call vundle#end()
filetype plugin on

" General Config
syntax on
set number
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2
set nowrap
set showcmd
let html_no_rendering = 1
colorscheme ron

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
autocmd BufWinEnter * NERDTreeMirror

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = {'dir':  'vendor/bundler$\|target$\|\.git$\|\.hg$\|\.svn$', 'file': '\.exe$\|\.so$\|\.dll$' }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
