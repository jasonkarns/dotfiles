alias ls='ls -hFG'           # humanize sizes, show filetype indicators, colorize
alias lsl='ls -l'            # long list
alias lsr='lsl -art'         # order by modified, latest last

alias f='find . -name'
alias g='grep -I --ignore-case --recursive --exclude-dir=.git --exclude-dir=tmp'
# select from modified git files and open in vim
alias vg='vim "$(git rev-parse --show-toplevel)/$(git status --porcelain | "$XDG_CONFIG_HOME/bashrc.d/git-status-order" | cut -c 3- | selecta)"'

alias upbrew='~/dotfiles/update brew'
alias upgpg='~/dotfiles/update gpg'
alias upnpm='~/dotfiles/update npm'
alias upnodenv='~/dotfiles/update nodenv'
alias uprbenv='~/dotfiles/update rbenv'
alias upvim='~/dotfiles/update vim'
alias upall='~/dotfiles/update'
