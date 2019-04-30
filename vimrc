" Automatic installation of vim plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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

" Vim defaults to plaintex. I only ever write LaTeX
let g:tex_flavor = "latex"

" ----------------------
" I am fed up with tabs. 
" ----------------------
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
