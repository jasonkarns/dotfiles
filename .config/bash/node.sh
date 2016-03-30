##############
# nodenv     #
##############

# store nodes under brew (or /usr/local)
export NODENV_ROOT=/usr/local/var/nodenv

if command -v nodenv &>/dev/null; then
  # initialize
  . <(nodenv init -)

  # show active node version in PS1
  __nodenv_ps1() {
    printf "$1" "$(nodenv version-name)"
  }
else
  __nodenv_ps1() {
    : # noop
  }
fi

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
# . <(grunt --completion=bash 2>/dev/null)
