" Plugins
call plug#begin()

" Looks Goods
" Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'

" Languages
Plug 'rust-lang/rust.vim'
Plug 'ollykel/v-vim'
" Plug 'OmniSharp/omnisharp-vim'

" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Rust Plugins Settings
syntax enable
filetype plugin indent on
let g:rustfmt_autosave = 1

" Lightline Settings
set laststatus=2

" Theme Settings
" colorscheme catppuccin_frappe
" let g:lightline = {'colorscheme': 'catppuccin_frappe'}

" Cursor Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" Others
set number
set shiftwidth=4 smarttab

