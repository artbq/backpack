call plug#begin('~/.local/share/nvim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-vinegar'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-fugitive'

Plug 'vim-ruby/vim-ruby'
Plug 'keith/rspec.vim'
Plug 'rust-lang/rust.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'cespare/vim-toml'

Plug 'arcticicestudio/nord-vim'

call plug#end()

let g:UltiSnipsExpandTrigger = '<A-e>'
let g:UltiSnipsListSnippets = '<A-l>'
let g:UltiSnipsJumpForwardTrigger = '<A-j>'
let g:UltiSnipsJumpBackwardTrigger = '<A-k>'

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

let g:buffergator_viewport_split_policy = 'B'

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1

augroup nord-overrides
  autocmd!

  autocmd ColorScheme nord highlight rubySymbol cterm=NONE ctermfg=2
  autocmd ColorScheme nord highlight rubyStringDelimiter ctermfg=2
  autocmd ColorScheme nord highlight rubyInstanceVariable ctermfg=6

  autocmd ColorScheme nord highlight tomlTable ctermfg=14
augroup END

set tabstop=2
set expandtab
set shiftwidth=2

set ignorecase
set smartcase

set nowrap

set relativenumber
set number

colorscheme nord

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
