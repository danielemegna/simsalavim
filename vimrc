" ---- Vim plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-repeat'
"Plug 'arcticicestudio/nord-vim'
"Plug 'dense-analysis/ale'
"Plug 'kien/ctrlp.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" ---- Vim settings

" General Config
set number
set nowrap
set showcmd
set title
set autoread
set encoding=utf-8
set shortmess-=S  "remove 'S' flag to show the search count message when searching => [1/5]
"set timeout timeoutlen=3000 " increase leaderkey timeout
"set exrc " enable project .vimrc autoload
"set secure " disable shell, autocmd and write commands in project .vimrc

" Indentation
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2

" Colors
let html_no_rendering = 1
set background=dark
"colorscheme elflord

" Scrolling
"set scrolloff=8
"set sidescrolloff=15
"set sidescroll=1

"" ---- Remap
vnoremap p pgvy " yank again after paste on visual

"" ---- Plugins settings

" GitGutter
set updatetime=500 " increase plugins refresh rate
autocmd BufWritePost * GitGutter " refresh on save
let g:gitgutter_override_sign_column_highlight = 0
nmap ]p <Plug>(GitGutterPreviewHunk)  " remap preview
nmap ]u <Plug>(GitGutterUndoHunk)     " remap undo
nmap ]a <Plug>(GitGutterStageHunk)    " remap add
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4

