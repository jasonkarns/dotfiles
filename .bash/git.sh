#########################
# aliases
#########################

alias gs='git status'
alias ga='git add'
alias gai='git add --interactive'
alias gap='git add -p'
alias gb='git branch'
alias gc='git commit'
alias grp='git reset -p'
alias gd='git diff'
alias gdw='git diff --word-diff'
alias gdc='git diff --cached'
alias go='git checkout'
alias gop='git checkout -p'
alias gk='gitk --all&'
alias gx='gitx --all'
alias glog='git glog'
alias ghist='git hist'
alias giton='export GIT_PS1_SHOWDIRTYSTATE=true && export GIT_PS1_SHOWSTASHSTATE=true'
alias gitoff='unset GIT_PS1_SHOWDIRTYSTATE && unset GIT_PS1_SHOWSTASHSTATE'


#alias gbc='git branch --contains'
#alias grb='git rebase'
#alias gl='git log'
#alias glp='git log -m -p -- '
#alias glps='git log -p -S'
#alias gbl='git blame'
#alias gg='git grep'


#########################
# completion
#########################

[[ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]] && source `brew --prefix`/etc/bash_completion.d/git-completion.bash


#########################
# ps1
#########################

[[ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]] && source `brew --prefix`/etc/bash_completion.d/git-prompt.sh


