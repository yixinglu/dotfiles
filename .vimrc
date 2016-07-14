
set nocompatible

let mapleader = "\<Space>"

syntax on
set shortmess=atI

set backup
"set backupext=.bak
set backupdir=/tmp/
set dir=/tmp/

set encoding=utf-8

filetype plugin indent on
set autoindent
set smartindent

set autoread
set ruler
set showmode
set showcmd " show command in bottom bar
set showmatch " Show matching brackets
set cursorline " highlight current line
"set cursorcolumn
set cmdheight=1 " Height of the command bar
set laststatus=2 " Always show the status line
"set spell
set hidden

set relativenumber
set number

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

"search
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :nohlsearch<CR><CR>

set tabstop=4
autocmd FileType h,cpp,cc,c,python set expandtab tabstop=4 shiftwidth=2 softtabstop=2

" line break
"set lbr tw=100

colorscheme darkblue
":color desert

noremap <silent> <expr> j (v:count == 0? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0? 'gk' : 'k')

nnoremap <silent> n nzz
nnoremap <silent> N Nzz

" spacemacs-like keybindings
nnoremap <Leader>bb :buffers<CR>:buffer<Space>
nmap <LEADER>bd :bdelete<CR>
nmap <LEADER>bn :bn<CR>
nmap <LEADER>bp :bp<CR>
nmap <LEADER>bR :e<CR>

nnoremap <Leader>fs :w<CR>
nnoremap <Leader>ff :Explore<CR>
nmap <LEADER>fed :e ~/.vimrc<CR>
nmap <LEADER>feR :source ~/.vimrc<CR>

nmap <LEADER><TAB> <C-^>
nmap <Leader>j= mzgg=G`z
nmap <Leader>hh ^
nmap <Leader>ll $

nmap <LEADER>qq :qa<CR>
nmap <Leader>qQ :qa!<CR>

nmap <LEADER>wc :q<CR>
nmap <LEADER>wh <C-W>h
nmap <LEADER>wj <C-W>j
nmap <LEADER>wk <C-W>k
nmap <LEADER>wl <C-W>l
nmap <LEADER>ws <C-W>s
nmap <LEADER>wv <C-W>v
nmap <LEADER>ww <C-W><C-W>
