alias ls='ls -hFG'           # humanize sizes, show filetype indicators, colorize
alias lsl='ls -l'            # long list
alias lsr='lsl -art'         # order by modified, latest last

alias f='find . -name'
alias g='grep -I --ignore-case --recursive --exclude-dir=.git --exclude-dir=tmp'
# select from modified git files and open in vim
alias vg='vim "$(git rev-parse --show-toplevel)/$(git status --porcelain | "$XDG_CONFIG_HOME/bashrc.d/git-status-order" | cut -c 3- | selecta)"'

alias confirm='read -p "Press any key to continue anyway or Ctrl-C to quit"'

alias upbrew='brew update ; brew doctor || confirm && brew outdated && brew upgrade'
alias upgpg='keybase pgp pull'
alias upnpm='NODENV_VERSION=system npm update -g --quiet'
alias upnodenv='nodenv update && nodenv rehash && nodenv update-version-defs --dry-run'
alias uprbenv='rbenv update && rbenv rehash && rbenv update-version-defs --dry-run'
alias upvim='vim +PluginUpdate +PluginClean +qall'
alias upall='upbrew && upnodenv && uprbenv && upvim && upgpg && upnpm'
