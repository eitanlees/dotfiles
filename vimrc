"Stuff for Pathogen
execute pathogen#infect()
filetype plugin indent on
filetype plugin on
let mapleader=","  " leader is comma
set modelines=1
set nocompatible
set clipboard=unnamed
let g:tex_flavor = "latex"

" Colors {{{
" -------------------------------------
    syntax enable " Sets color
    " colorscheme monokai
    set background=dark
    " set term=xterm-256color
    set term=screen-256color
    colorscheme badwolf
    " Makes background match terminal
    let g:seiya_auto_enable=1
"  }}}
" Misc {{{
" -------------------------------------
"  }}}
" Spaces & Tabs {{{
" -------------------------------------
    "Sets the indent spacing
    set tabstop=4      " number of spaces a <Tab> in the text stands for
    set softtabstop=4  " if non-zero, number of spaces to insert for a <Tab>
    set shiftwidth=4   " number of spaces used for each step of (auto)indent
    set expandtab      " expand <Tab> to spaces in Insert mode
    autocmd Filetype html setlocal ts=2 sw=2 expandtab
"  }}}
" UI Layout {{{
" -------------------------------------
    " set relativenumber " show relative line number
    " set number       " show absolute line number
    set wrap           " long lines wrap
    set cursorline     " highlight the screen line of the cursor
    set showcmd        " show (partial) command keys in the status line
    set textwidth=100   " line length above which to break a line
    set wildmenu       " command-line completion shows a list of matches
"  }}}
" Folding {{{
" -------------------------------------
    set foldnestmax=1 " maximum fold depth for when 'foldmethod' is 'indent' or 'syntax'
    " folding type: 'manual', 'indent', 'expr', 'marker' or 'syntax'
    " fold toggle
    nnoremap <Space> za
    " }}}
" Searching {{{
" -------------------------------------
    set incsearch        " show match for partly typed search command
    " set hlsearch       " highlight matches

"  }}}
" Line Shortcuts {{{
" -------------------------------------
"  }}}
" Leader Shortcuts {{{
" -------------------------------------
    set pastetoggle=<leader>p " Binding for paste/nopaste mode

    " turn off search highlight [, Space]
    nnoremap <leader><space> :nohlsearch<CR>

    " setting ',s' to toggle spell check
    nnoremap <leader>s :set spell!<CR>

    " Underline the current line with various symbols (such that the number of
    " underline matches line length and indendation)
    nnoremap <Leader>= yypv$r=
    nnoremap <Leader>- yypv$r-
    nnoremap <Leader># yypv$r#
    nnoremap <Leader>" yypv$r"

    " reformats the paragraph
    nnoremap <leader>g vipgq

    " sets indent folding, remove with zi
    nnoremap <leader>f :set fdm=indent<CR>

    " Remove trailing white space
    nnoremap <leader>rtw :%s/\s\+$//<CR>

    " Mapping the command key to seimi colon and visversa
    noremap ; :
    noremap : ;

    " Mapping escape to 'jk'
    inoremap jk <esc>

    " Insert a TODO task as a commented line
    nnoremap <Leader>t oTODO:<space><esc>:Commentary<CR>A

    " Inserting a time stamp
    nnoremap <Leader>d :r! date "+\%Y-\%m-\%d \%H:\%M:\%S "<CR>
"  }}}
" CtrlP {{{
" -------------------------------------
"  }}}
" Launch Config {{{
" -------------------------------------
"  }}}
" Splits {{{
" -------------------------------------
    set splitbelow " a new window is put below the current one
    set splitright " a new window is put right of the current one

    "Setting control-direction to switch panes
    noremap <C-l> <C-w>l
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k
    " }}}
" AutoGroups {{{
" -------------------------------------
"  }}}
" Backups {{{
" -------------------------------------
"  }}}
" Custom Functions {{{
" -------------------------------------
    " Function for incrementing selected numbers
    function! Incr()
    let a = line('.') - line("'<")
    let c = virtcol("'<")
    if a > 0
        execute 'normal! '.c.'|'.a."\<C-a>"
    endif
    normal `<
    endfunction
    vnoremap <C-a> :call Incr()<CR>
"  }}}
" Ideas {{{
" -------------------------------------
    " }}}

" vim:foldmethod=marker:foldlevel=0
