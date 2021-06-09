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
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-abolish'
Plugin 'Xuyuanp/nerdtree-git-plugin'

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
set timeout timeoutlen=3000 " increase leaderkey timeout
set updatetime=500 " increase refresh rate
set autoread
set exrc " enable project .vimrc autoload
"set secure " disable shell, autocmd and write commands in project .vimrc
let html_no_rendering = 1
colorscheme elflord

"" Plugins settings

" NERD Tree
function MyNerdToggle()
  if &filetype == 'nerdtree' || &filetype == ''
    :NERDTreeToggle
  else
    :NERDTreeFind
    ":silent NERDTreeMirror
  endif
endfunction

noremap <C-l> :call MyNerdToggle()<CR>
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
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" GitGutter
let g:gitgutter_override_sign_column_highlight = 0
highlight clear SignColumn
highlight GitGutterAdd ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight GitGutterChangeDelete ctermfg=4
