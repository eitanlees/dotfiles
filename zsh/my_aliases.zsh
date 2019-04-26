# Simple enough
alias c='clear'

# Short cuts to edit dot files
alias myalias='vim ~/dotfiles/zsh/my_aliases.zsh'
alias zshrc='vim ~/dotfiles/zshrc'
alias vimrc='vim ~/.vimrc'
alias tmux.conf='vim ~/dotfiles/tmux.conf'

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias rand='vim ~/notes/random-thoughts.md'
alias buy='vim ~/notes/things-to-buy.md'

# Puts LaTeX output into a ./tmp/ directory
alias pdflatex='mkdir -p tmp; pdflatex -output-directory tmp'
alias latexmk='mkdir -p tmp; latexmk -pdf -outdir=tmp'

# Todo
alias t='todo.sh'
alias ta='todo.sh add'
alias gtd='todo.sh projectview'

# Open PDF's with Skim
skim() {/Applications/Skim.app/Contents/MacOS/Skim $* &}

# Opens files with VLC
vlc() {/Applications/VLC.app/Contents/MacOS/VLC $*}

alias chrome='open -a "Google Chrome"'

# Common Typeos
alias pc='cp'
alias sl='ls'
alias exti='exit' etix='exit' eitx='exit' etxi='exit' eixt='exit' ecit='exit'
alias oepn='open' opne='open'

# A full brew update
alias bu='brew update; brew upgrade; brew cleanup; brew doctor'
alias lock='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
