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
Plugin 'mihaifm/bufstop'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'Chun-Yang/vim-action-ag'

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

set visualbell

set autoread





"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""Colorscheme"""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""
"if has("gui_running")
"    colorscheme aurora
"endif

"set guifont=Fira\ Code:h15

set guioptions-=L

set guioptions-=r





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

nmap gs :Gstatus<CR>

nnoremap <silent> [b :bprevious<CR>

nnoremap <silent> ]b :bnext<CR>

nnoremap <silent> [B :bfirst<CR>

nnoremap <silent> ]B :blast<CR>





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





"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""Multiple cursor"""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""

let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_next_key='<D-d>'

let g:multi_cursor_prev_key='<D-p>'

let g:multi_cursor_skip_key='<D-x>'

let g:multi_cursor_quit_key='<Esc>'

