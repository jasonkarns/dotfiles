# ps1
[[ -s ~/.bash/ps1.sh ]] && source ~/.bash/ps1.sh

# misc aliases
[[ -s ~/.bash/aliases.sh ]] && source ~/.bash/aliases.sh

# git aliases
[[ -s ~/.bash/git_aliases.sh ]] && source ~/.bash/git_aliases.sh

# proxy
[[ -s ~/.bash/proxy.sh ]] && source ~/.bash/proxy.sh

# ssh
#[[ -s ~/.bash/ssh.sh ]] && source ~/.bash/ssh.sh

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
#export PATH=./bin:$PATH;

##############
# ruby stuff
##############

alias godev='cd /c/dev'
alias gonav='cd /c/dev/navigators'
alias gokey='cd /c/dev/navigators/ppa_test_scripts/unit'
alias gocc='gitoff && cd /r/KN_FA2012_Devl/ppa_test_scripts'
alias chrome='/c/Documents\ and\ Settings/karnsj1/Local\ Settings/Application\ Data/Google/Chrome/Application/chrome.exe'

alias deploy_masschange='ssh beagle bin/deploy dev2 ppai /bin/webforms/PPAIEX50.fm*'