" nvim configuration based on ThePrimeagen

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set nowrap

" undo settings
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch

set scrolloff=8

set signcolumn=yes
set colorcolumn=80

call plug#begin(stdpath('data').'/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

let mapleader = " "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search = vim.fn.input("Grep for > ")})<CR>

