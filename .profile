########################
# ps1
########################
# display working directory state (* for modified/+ for staged)
export GIT_PS1_SHOWDIRTYSTATE=true
# display stashed state ($ if there are stashed files)
export GIT_PS1_SHOWSTASHSTATE=true
########################


########################
# use putty
########################
PUTTY_HOME=/c/Program\ Files\ \(x86\)/PuTTY
export GIT_SSH=$PUTTY_HOME/plink.exe
"$PUTTY_HOME/pageant.exe" ~/.ssh/github.ppk ~/.ssh/unfuddle.ppk &
cd
########################


########################
# misc aliases
########################
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias lsl='ls -l'                              # long list
alias lsa='ls -A'                              # all but . and ..
########################
