# use putty
PUTTY_HOME=/c/Program\ Files\ \(x86\)/PuTTY
export GIT_SSH=$PUTTY_HOME/plink.exe
"$PUTTY_HOME/pageant.exe" ~/.ssh/github.ppk ~/.ssh/unfuddle.ppk &
