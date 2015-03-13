# Simple enough
alias c='clear'

# Logong information for work computer
alias work_login='echo Remeber you have to be on the Miami VPN before logging in;
                  ssh -XY eitan@10.35.235.220 -p7343'

# Allows hidden files to be viewed in Finder
alias show_hidden='defaults write com.apple.finder AppleShowAllFiles -bool true'
alias hide='defaults write com.apple.finder AppleShowAllFiles -bool false'

# Short cuts to edit dot files
alias zsh_alias='vim ~/.oh-my-zsh/custom/my_aliases.zsh'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vimrc='vim ~/.vimrc'

# Puts LaTeX output into a ./tmp/ directory
alias pdflatex='mkdir -p tmp; pdflatex -output-directory tmp'
alias latexmk='mkdir -p tmp; latexmk -pdf -outdir=tmp'

# Git aliases
alias gg='git log --oneline --abbrev-commit --all --graph --decorate --color'

# Open PDF's with Skim
skim() {/Applications/Skim.app/Contents/MacOS/Skim $* &}

# Opens files with VLC
vlc() {/Applications/VLC.app/Contents/MacOS/VLC $*}

# Makes vim open nvim
# vim() {nvim $*}
