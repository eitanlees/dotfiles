" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Tim Pope writes essential plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'

" Steve Losh makes pretty things
Plug 'sjl/badwolf'

" A snippet engine and snippet catalog
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Latex plugin
Plug 'lervag/vimtex'

" Plugins become visible to Vim after this call.
call plug#end()

colorscheme badwolf

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Vim defaults to plaintex. I only ever write LaTeX
let g:tex_flavor = "latex"
