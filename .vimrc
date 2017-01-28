set nocompatible
filetype indent plugin on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'

call vundle#end()


filetype on
filetype plugin indent on

let mapleader = ","

colo desert
syntax on

noremap <Leader>bb <esc>:b#<cr>

