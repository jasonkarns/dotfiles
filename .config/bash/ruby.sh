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

# path and setup
# eval "$(rbenv init -)"
export RBENV_ROOT=$(brew --prefix)/var/rbenv
. <(rbenv init -)

# aliases
alias rb='rbenv'

__rbenv_ps1 ()
{
  printf "$1" "$(rbenv version-name)"
}
