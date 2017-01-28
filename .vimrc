set nocompatible
filetype indent plugin on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
Plugin 'VundleVim/Vundle.vim'


call vundle#end()


filetype on
filetype plugin indent on

let mapleader = ","

colo desert
syntax on

noremap <Leader>bb <esc>:b#<cr>

