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
# nodenv     #
##############

# store nodes under brew (or /usr/local)
export NODENV_ROOT=/usr/local/var/nodenv

# initialize
$(which nodenv &>/dev/null) && . <(nodenv init -)

__nodenv_ps1 () {
  $(which nodenv &>/dev/null) && printf "$1" "$(nodenv version-name)"
}

alias nd=nodenv

##############
# npm        #
##############

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/config

# sort-of pristine reinstall for npm
alias npm-pristine='[ -f $(npm prefix)/npm-shrinkwrap.json ] || npm shrinkwrap && rm -rf $(npm prefix)/node_modules && npm install'


##############
# grunt      #
##############

# grunt tab completion
. <(grunt --completion=bash 2>/dev/null)
