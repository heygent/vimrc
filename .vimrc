" Vundle - configurazione 

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1

" Airline insert mode delay fix
if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

set background=dark
set number
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=81
set textwidth=80
set laststatus=2
set incsearch

autocmd VimEnter * AirlineTheme base16_default

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

