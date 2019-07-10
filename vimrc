" Vim Plug
call plug#begin('~/.vim/plugged')

" Cosmetic Plugins

Plug 'sjl/badwolf'                    " A nice color palette
Plug 'tpope/vim-sensible'             " Recommended defaults
Plug 'vim-airline/vim-airline'        " A nice status line
Plug 'vim-airline/vim-airline-themes' " Status line themes

" IDE Emulation

Plug 'SirVer/ultisnips'             " Snippet engine
Plug 'tpope/vim-repeat'             " Smart repeating
Plug 'honza/vim-snippets'           " Snippet library
Plug 'tpope/vim-surround'           " Paren edits
Plug 'scrooloose/nerdtree'          " File browser
Plug 'tpope/vim-commentary'         " Block comments
Plug 'junegunn/vim-easy-align'      " Alingment
Plug 'terryma/vim-multiple-cursors' " Multiple cursors
" Plug 'w0rp/ale'                     " Asynchronous lint engine
" Plug 'tpope/vim-eunuch'             " Unix like features
" Plug 'tpope/vim-fugitive'           " Git functionality
" Plug 'davidhalter/jedi-vim'         " Auto completion

" Language Specific Plugins

Plug 'lervag/vimtex'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'marshallward/vim-restructuredtext'

call plug#end()

colorscheme badwolf
let g:airline_theme='badwolf'

set expandtab    " On pressing tab, insert 4 spaces
set tabstop=4    " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width

" Vim defaults to plaintex. I only ever write LaTeX
let g:tex_flavor = "latex"

" ALE Config
" let g:ale_enable=0 " Turn off linting by default
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'python': ['black'],
" \   'javascript': ['eslint'],
" \}
