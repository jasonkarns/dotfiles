alias ls='ls -hFG'           # humanize sizes, show filetype indicators, colorize
alias lsl='ls -l'            # long list
alias lsa='ls -lA'           # show hidden files (except . and ..)
alias lsart='ls -lart'       # order by modified, latest last
alias hrep='history | grep'  # search command history
alias g='grep -I --ignore-case --recursive --exclude-dir=.git --exclude-dir=tmp'
# alias rm='rm -I'

alias upbrew='brew update && brew doctor && brew outdated && brew upgrade --all && brew cleanup'
alias upnpm='nodenv each npm update -g --quiet'
alias upnodenv='nodenv update'
alias uprbenv='rbenv update'
alias upvim='vim +PluginUpdate +PluginClean +qall'
alias upall='upbrew && upnodenv && upnpm && uprbenv && upvim'

alias iectrl="INSTALL_PATH=${IEVMS_HOME}/ievms iectrl"
