# use putty

if [ -d "/c/program files (x86)" ]; then
  PUTTY_HOME="/c/program files (x86)/putty"
else
  PUTTY_HOME="/c/program files/putty"
fi

#export GIT_SSH=$PUTTY_HOME/plink.exe

if [ -f *.ppk ]; then
  "$PUTTY_HOME/pageant.exe" `ls ~/.ssh/*.ppk` &
fi
