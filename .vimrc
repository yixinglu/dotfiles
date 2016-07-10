
syntax enable

" leader key
let mapleader = "\<Space>"
" Open buffer menu
nnoremap <Leader>b :buffers<CR>:buffer<Space>

set autoread
set ruler
set showcmd " show command in bottom bar
set cursorline " highlight current line
set cmdheight=1 " Height of the command bar
" Always show the status line
set laststatus=2 
" Show matching brackets
set showmatch

set number
set relativenumber

"search
set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :nohlsearch<CR><CR>

"All tab characters are 4 space characters.
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2

if has("autocmd")
  filetype plugin indent on
endif

set autoindent

"highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen

" line break
"set lbr
"set tw=100

colorscheme darkblue
":color desert

noremap <silent> <expr> j (v:count == 0? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0? 'gk' : 'k') 

