call plug#begin('~/.local/share/nvim/plugged')

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'arcticicestudio/nord-vim'
Plug 'rust-lang/rust.vim'

call plug#end()

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1

let g:UltiSnipsExpandTrigger = '<A-e>'

colorscheme nord

set nowrap

set tabstop=2
set expandtab
set shiftwidth=2

set relativenumber
set number

set ignorecase
set smartcase

let mapleader = ','

nmap <A-h> <C-w>h
nmap <A-j> <C-w>j
nmap <A-k> <C-w>k
nmap <A-l> <C-w>l

nmap <Tab> gt
nmap <S-Tab> gT

function! <SID>StripTrailingWhitespace()
  let _s = @/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/ = _s
  call cursor(l, c)
endfunction

autocmd BufWritePre * :call <SID>StripTrailingWhitespace()
