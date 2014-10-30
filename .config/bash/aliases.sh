alias ls='ls -hFG'           # humanize sizes, show filetype indicators, colorize
alias lsl='ls -l'            # long list
alias lsa='ls -lA'           # show hidden files (except . and ..)
alias lsart='ls -lart'       # order by modified, latest last
alias hrep='history | grep'  # search command history
alias g='grep -I --ignore-case --recursive --exclude-dir=.git --exclude-dir=tmp'

alias upvim='vim +PluginUpdate +PluginClean +qall'
alias upbrew='brew update && brew doctor && brew outdated && brew upgrade && brew cleanup'
alias upnpm='for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f2); do npm -g install "$package"; done'
alias upall='upbrew && upnpm && upvim'

alias gemini='ssh -R1337:localhost:22 jasonkarns'
