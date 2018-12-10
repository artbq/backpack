call plug#begin('~/.local/share/nvim/plugged')

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'arcticicestudio/nord-vim'
Plug 'rust-lang/rust.vim'

call plug#end()

set nowrap

let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1

colorscheme nord
