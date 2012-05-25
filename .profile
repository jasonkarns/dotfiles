# ps1
[[ -s ~/.bash/ps1.sh ]] && source ~/.bash/ps1.sh

# misc aliases
[[ -s ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh

# git aliases
[[ -s ~/.bash/git_aliases.sh ]] && source ~/.bash/git_aliases.sh

# proxy
[[ -s ~/.bash/proxy.sh ]] && source ~/.bash/proxy.sh

# ssh
[[ -s ~/.bash/ssh.sh ]] && source ~/.bash/ssh.sh

export ANSI_COLOR=true;

##############
# ruby stuff
##############

# use pik
[[ -s ~/.pik/.pikrc ]] && source ~/.pik/.pikrc

# use rubygems
export RUBYOPT=-rubygems

# use nailgun
#export JRUBY_OPTS=--ng

# prefer Bundler's binstubs
export PATH=./bin:$PATH;

