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
Plug 'tpope/vim-commentary'         " Block comments
Plug 'junegunn/vim-easy-align'      " Alingment
Plug 'terryma/vim-multiple-cursors' " Multiple cursors

" Language Specific Plugins

Plug 'lervag/vimtex'
Plug 'pangloss/vim-javascript'
Plug 'marshallward/vim-restructuredtext'
Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

colorscheme badwolf
let g:airline_theme='badwolf'

set expandtab    " On pressing tab, insert 4 spaces
set tabstop=4    " show existing tab with 4 spaces width
set shiftwidth=4 " when indenting with '>', use 4 spaces width

" Vim defaults to plaintex. I only ever write LaTeX
let g:tex_flavor = "latex"

" Set my personal snippet library
let g:UltiSnipsSnippetsDir="~/dotfiles/my-snippets"
let g:UltiSnipsSnippetDirectories=["UltiSnips","my-snippets"]
let g:UltiSnipsEditSplit='context'
