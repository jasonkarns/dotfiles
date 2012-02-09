# ps1
source ~/.bash/ps1.sh

# misc aliases
source ~/.bash/aliases.sh

# git aliases
source ~/.bash/git_aliases.sh

export ANSI_COLOR=true;

##############
# ruby stuff
##############

# use pik
[[ -s ~/.pik/.pikrc ]] && source ~/.pik/.pikrc

# use rubygems
export RUBYOPT=-rubygems

# proxy
source ~/.bash/proxy.sh

# ssh
source ~/.bash/ssh.sh
