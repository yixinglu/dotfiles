
set nocompatible

let mapleader = "\<Space>"

syntax on
set shortmess=atI

set backup
"set backupext=.bak
set backupdir=/tmp/
set dir=/tmp/

"set encoding=utf-8

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
set colorcolumn=121
set cmdheight=1 " Height of the command bar
set laststatus=2 " Always show the status line
"set spell
set hidden

set relativenumber
set number

set wildmenu

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

"if exists('$ITERM_PROFILE')
"  if exists('$TMUX')
"    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"  else
"    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"  endif
"end

"search
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :nohlsearch<CR><CR>

set tabstop=4
autocmd FileType h,hpp,cpp,cc,cxx,c,python set expandtab tabstop=4 shiftwidth=2 softtabstop=2

" line break
"set lbr tw=100

colorscheme desert

noremap <silent> <expr> j (v:count == 0? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0? 'gk' : 'k')
"noremap <silent> k kzz
"noremap <silent> j jzz

nnoremap <silent> n nzz
nnoremap <silent> N Nzz

" spacemacs-like keybindings
nnoremap <Leader>bb :buffers<CR>:buffer<Space>
nmap <leader>bd :bdelete<CR>
nmap <leader>bD :bdelete!<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>bR :e<CR>
nmap <leader>bc :enew<CR>

nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fj :Explore<CR>
nmap <leader>fed :e ~/.vimrc<CR>
nmap <leader>feR :source ~/.vimrc<CR>
nmap <leader>tl :setlocal wrap!<CR>:setlocal wrap?<CR>

"imap jj <Esc>

nmap <leader><TAB> <C-^>
nmap <Leader>j= mzgg=G`z
nmap <Leader>hh ^
nmap <Leader>ll $

nmap <leader>qq :qa<CR>
nmap <Leader>qQ :qa!<CR>

nmap <leader>w <C-W>
" close current window
nmap <leader>wd <C-W>c
nmap <leader>ww <C-W><C-W>
