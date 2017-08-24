# Simple enough
alias c='clear'

# Allows hidden files to be viewed in Finder
alias show_hidden='defaults write com.apple.finder AppleShowAllFiles -bool true'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false'

# Short cuts to edit dot files
alias myalias='vim ~/dotfiles/zsh/my_aliases.zsh'
alias zshrc='vim ~/dotfiles/zshrc'
alias vimrc='vim ~/.vimrc'
alias tmux.conf='vim ~/dotfiles/tmux.conf'

# alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
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
alias exti='exit' etix='exit' eitx='exit' etxi='exit' eixt='exit' 
alias ecit='exit'
alias oepn='open' opne='open'

# A full brew update
alias bu='brew update; brew upgrade; brew cleanup; brew doctor'

# Upgrade all python packages
alias pip-update-all="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip install -U"
alias pip3-update-all="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo -H pip3 install -U"
