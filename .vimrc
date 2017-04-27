set nocompatible
filetype indent plugin on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'easymotion/vim-easymotion'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'lervag/vimtex'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'VundleVim/Vundle.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
"Plugin 'rakr/vim-two-firewatch'

call vundle#end()


filetype on
filetype plugin indent on


syntax on

set background=light
colorscheme hybrid_material

let mapleader = ","
let g:airline_theme = 'hybrid'
let g:enable_bold_font=1

noremap <Leader>bb <esc>:b#<cr>
:imap jk <Esc>

" Command to open current document as pdf in skim
:command! Skim execute ':silent! !open -ga skim %:r.pdf' | execute ':redraw!'


" For vim-notes

let g:notes_title_sync = 'rename_file'
let g:notes_suffix = '.vnote'
let g:notes_directories = ['~/Documents/Notes']
map <silent> <C-j> :RecentNotes<CR>


" Shortcuts for latexmk and skim

map <leader>l :Latexmk<CR>
map <leader>o :Skim<CR>
