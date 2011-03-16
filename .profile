####### PS1 ############
# Display working directory state (modified/staged/clean) in command prompt
export GIT_PS1_SHOWDIRTYSTATE=true
########################


####### Use Putty ######
PUTTY_HOME=/c/Program\ Files\ \(x86\)/PuTTY
export GIT_SSH=$PUTTY_HOME/plink.exe
"$PUTTY_HOME/pageant.exe" ~/.ssh/github.ppk ~/.ssh/unfuddle.ppk &
cd
########################
