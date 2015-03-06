"Stuff for Pathogen 
execute pathogen#infect()
filetype plugin indent on
filetype plugin on
let mapleader=","  " leader is comma

" Disablels Vi compatability
set nocompatible

" -------------------------------------
" important
" -------------------------------------
    set pastetoggle=<leader>p " Binding for paste/nopaste mode

" -------------------------------------
" moving around, searching and patterns
" -------------------------------------
    set incsearch      " show match for partly typed search command

" -------------------------------------
" tags
" -------------------------------------

" -------------------------------------
" displaying text
" -------------------------------------
    set relativenumber " show relative line number
    " set number       " show absolute line number
    set wrap           " long lines wrap

" -------------------------------------
" syntax, highlighting and spelling
" -------------------------------------
    " Sets color 
    syntax enable 
    colorscheme badwolf
    set cursorline     " highlight the screen line of the cursor

    " set hlsearch       " highlight matches
    " " turn off search highlight [, Space]
    " nnoremap <leader><space> :nohlsearch<CR> 

    " setting ',s' to toggle spell check
    nnoremap <leader>s :set spell!<CR>

" -------------------------------------
" multiple windows
" -------------------------------------
    set splitbelow " a new window is put below the current one
    set splitright " a new window is put right of the current one

    "Setting control-direction to switch panes
    noremap <C-l> <C-w>l
    noremap <C-h> <C-w>h
    noremap <C-j> <C-w>j
    noremap <C-k> <C-w>k

" -------------------------------------
" multiple tab pages
" -------------------------------------

" -------------------------------------
" terminal
" -------------------------------------

" -------------------------------------
" using the mouse
" -------------------------------------

" -------------------------------------
" printing
" -------------------------------------

" -------------------------------------
" messages and info
" -------------------------------------
    set showcmd        " show (partial) command keys in the status line

" -------------------------------------
" selecting text
" -------------------------------------

" -------------------------------------
" editing text
" -------------------------------------
    set textwidth=80   " line length above which to break a line

    
    " Underline the current line with various symbols (such that the number of
    " underline matches line length and indendation)
    nnoremap <Leader>= yypv$r=
    nnoremap <Leader>- yypv$r-
    nnoremap <Leader># yypv$r#
    nnoremap <Leader>" yypv$r"

    
    " Underline function 
    " to use just :Underline (expression)
    function! s:Underline(chars)
    let chars = empty(a:chars) ? '-' : a:chars
    let nr_columns = virtcol('$') - 1
    let uline = repeat(chars, (nr_columns / len(chars)) + 1)
    put =strpart(uline, 0, nr_columns)
    endfunction
    command! -nargs=? Underline call s:Underline(<q-args>)

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

" -------------------------------------
" tabs and indenting
" -------------------------------------
    "Sets the indent spacing
    set tabstop=4      " number of spaces a <Tab> in the text stands for
    set softtabstop=4  " if non-zero, number of spaces to insert for a <Tab>
    set shiftwidth=4   " number of spaces used for each step of (auto)indent
    set expandtab      " expand <Tab> to spaces in Insert mode

" -------------------------------------
" folding
" -------------------------------------
    set foldnestmax=1 " maximum fold depth for when 'foldmethod' is 'indent' or 'syntax'
    " folding type: 'manual', 'indent', 'expr', 'marker' or 'syntax'
    nnoremap <leader>f :set fdm=indent<CR>
    " fold toggle
    nnoremap <Space> za

" -------------------------------------
" diff mode
" -------------------------------------

" -------------------------------------
" mapping
" -------------------------------------

    " Mapping the command key to seimi colon and visversa
    noremap ; :
    noremap : ;

    " Mapping escape to 'jk' 
    inoremap jk <esc>

    " Remove trailing white space
    nnoremap <leader>rtw :%s/\s\+$//<CR>

    " NERDTree toggle
    nnoremap <leader>n :NERDTreeToggle<CR>
    

" -------------------------------------
" reading and writing files
" -------------------------------------

" -------------------------------------
" the swap file
" -------------------------------------

" -------------------------------------
" command line editing
" -------------------------------------
    set wildmenu       " command-line completion shows a list of matches

    " Latex macros for compiling and viewing

" -------------------------------------
" executing external commands
" -------------------------------------

" -------------------------------------
" running make and jumping to errors
" -------------------------------------

" -------------------------------------
" language specific
" -------------------------------------

" -------------------------------------
" multi-byte characters
" -------------------------------------

" -------------------------------------
" various
" -------------------------------------

"-------------------------

" ervandew/screen configuration to send commands to ipython.

let g:ScreenImpl = "Tmux"

" My attempt to make some augroups
"
augroup latex_macros " {
    autocmd!
    autocmd FileType tex :nnoremap <leader>c :w<CR>:!mkdir -p tmp; latexmk -pdf -outdir=tmp %<CR>
    autocmd FileType tex :nnoremap <leader>v :!/Applications/Skim.app/Contents/MacOS/Skim tmp/*.pdf &<CR><CR>
augroup END " }

" augroup markdown_macros " {
"     autocmd!
"     autocmd FileType markdown :nnoremap <leader>c :w<CR>:!mkdir -p tmp; latexmk -pdf -outdir=tmp %<CR>
"     autocmd FileType markdown :nnoremap <leader>v :!/Applications/Skim.app/Contents/MacOS/Skim tmp/*.pdf &<CR><CR>
" augroup END " }

augroup python_macros " {
    autocmd!
    " Open an ipython shell.
    autocmd FileType python :nnoremap <localleader>p :ScreenShell! ipython<CR>

    " Close whichever shell is running.
    autocmd FileType python :nnoremap <LocalLeader>q :ScreenQuit<CR>

    " Send current line to python and stay on line
    autocmd FileType python :nnoremap <LocalLeader>r V:ScreenSend<CR>

    " Send current line to python and move to next line.
    autocmd FileType python :nnoremap <LocalLeader>d V:ScreenSend<CR>j

    " Send visual selection to python and move to next line.
    autocmd FileType python :vnoremap <LocalLeader>v :ScreenSend<CR>`>0j

    " Send a carriage return line to python.
    autocmd FileType python :nnoremap <LocalLeader>a :call g:ScreenShellSend("\r")<CR>

    " Clear screen.
    autocmd FileType python :nnoremap <LocalLeader>c
          \ :call g:ScreenShellSend('!clear')<CR>

    " Print the current working directory.
    autocmd FileType python :nnoremap <LocalLeader>wd
          \ :call g:ScreenShellSend('!pwd')<CR>

    " Get length for object under cursor.
    function GetLen()
      let w = "len(" . expand("<cword>") . ")"
      :call g:ScreenShellSend(w)
    endfunction
    autocmd FileType python :nnoremap <LocalLeader>l :call GetLen()<CR>

    " Get ipython help for word under cursor. Complement it with Shift + K.
    function GetHelp()
      let w = expand("<cword>") . "??"
      :call g:ScreenShellSend(w)
    endfunction
    autocmd FileType python map <LocalLeader>h :call GetHelp()<CR>
augroup END " }

    " " Open an ipython2 shell.
    " autocmd FileType python map <LocalLeader>pp :ScreenShell! ipython2<CR>

    " " Start a time block to execute code in.
    " autocmd FileType python map <LocalLeader>t
    "       \ :call g:ScreenShellSend('%%time')<CR>

    " " Start a timeit block to execute code in.
    " autocmd FileType python map <LocalLeader>tt
    "       \ :call g:ScreenShellSend('%%timeit')<CR>

    " " Start a debugger repl to execute code in.
    " autocmd FileType python map <LocalLeader>db
    "       \ :call g:ScreenShellSend('%%debug')<CR>

    " " Start a profiling block to execute code in.
    " autocmd FileType python map <LocalLeader>pr
    "       \ :call g:ScreenShellSend('%%prun')<CR>

    " " Set working directory to current file's folder.
    " function SetWD()
    "   let wd = '!cd ' . expand('%:p:h')
    "   :call g:ScreenShellSend(wd)
    " endfunction
    " autocmd FileType python map <LocalLeader>sw :call SetWD()<CR>


    " " Get `dir` help for word under cursor.
    " function GetDir()
    "   let w = "dir(" . expand("<cword>") . ")"
    "   :call g:ScreenShellSend(w)
    " endfunction
    " autocmd FileType python map <LocalLeader>d :call GetDir()<CR>
    " "-------------------------
