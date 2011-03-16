########################
# ps1
########################
# display working directory state (* for modified/+ for staged)
export GIT_PS1_SHOWDIRTYSTATE=true
# display stashed state ($ if there are stashed files)
export GIT_PS1_SHOWSTASHSTATE=true
########################


####### Use Putty ######
PUTTY_HOME=/c/Program\ Files\ \(x86\)/PuTTY
export GIT_SSH=$PUTTY_HOME/plink.exe
"$PUTTY_HOME/pageant.exe" ~/.ssh/github.ppk ~/.ssh/unfuddle.ppk &
cd
########################
