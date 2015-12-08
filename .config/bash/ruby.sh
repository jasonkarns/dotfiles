#########################
# ruby
#########################

export RUBYOPT=-rubygems


#########################
# rubygems
#########################

# export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem/specs
# export GEM_PATH=$XDG_DATA_HOME/gem


#########################
# bundler
#########################

# aliases
alias be='bundle exec'


#########################
# rbenv
#########################

# store rubies under brew (or /usr/local)
export RBENV_ROOT=/usr/local/var/rbenv

# initialize
$(which rbenv &>/dev/null) && . <(rbenv init -)

# show active ruby version in PS1
__rbenv_ps1 () {
  $(which rbenv &>/dev/null) && printf "$1" "$(rbenv version-name)"
}
