##############
# nvm        #
##############

# store node versions under brew
# export NVM_DIR=$(brew --prefix)/var/nvm

# activate nvm
# . $(brew --prefix nvm)/nvm.sh

# __nvm_ps1 () {
#   $(nvm &>/dev/null) && printf "$1" "$(nvm current)"
# }

##############
# npm        #
##############

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config

# sort-of pristine reinstall for npm
alias npm-pristine='[ -f $(npm prefix)/npm-shrinkwrap.json ] || npm shrinkwrap && rm -rf $(npm prefix)/node_modules && npm install'

alias npmexec='PATH=$(npm bin):$PATH'


##############
# grunt      #
##############

# grunt tab completion
. <(grunt --completion=bash 2>/dev/null)
