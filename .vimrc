"""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""Vundle"""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mjbrownie/swapit'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'rking/ag.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'mihaifm/bufstop'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()

filetype plugin indent on





"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""General"""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufWritePre * StripWhitespace

syntax enable

set tabstop=4 shiftwidth=4 expandtab autoindent smartindent

set backspace=indent,eol,start

set laststatus=2

set wildmenu

let mapleader=','

set number

set t_CO=256





"""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""Mappings"""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

noremap <Up> <NOP>

noremap <Down> <NOP>

noremap <Left> <NOP>

noremap <Right> <NOP>

map <C-n> :NERDTreeToggle<CR>

map <leader>b :BufstopFast<CR>

nmap ,ev :tabedit $MYVIMRC<CR>





"""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""Autogroup""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }





"""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""CtrlP""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }





"""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""Search"""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch

set hlsearch

set ignorecase smartcase

nnoremap <leader><space> :nohlsearch<CR>

