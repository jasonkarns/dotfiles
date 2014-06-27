alias ls='ls -hFG'           # humanize sizes, show filetype indicators, colorize
alias lsl='ls -l'            # long list
alias lsa='ls -lA'           # show hidden files (except . and ..)
alias lsart='ls -lart'       # order by modified, latest last
alias hrep='history | grep'  # search command history
alias g='grep -I --ignore-case --recursive --exclude-dir=.git --exclude-dir=tmp'

alias upvim='vim +PluginUpdate +qall'
alias upbrew='brew update && brew doctor && brew outdated'

alias gemini='ssh -R1337:localhost:22 jasonkarns'

[[ -f ~/.bash/aliases.sh.local ]] && source ~/.bash/aliases.sh.local
