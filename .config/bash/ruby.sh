#########################
# ruby
#########################

#alias rdbm='rake db:migrate db:test:prepare'
#alias bers='be rspec --drb'
#alias spork2='be spork --port 9090'
#alias bers2='RSPEC_DRB=9090 be rspec --drb'

export RUBYOPT=-rubygems


#########################
# rubygems
#########################

export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem/specs
export GEM_PATH=$XDG_DATA_HOME/gem


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
export RBENV_ROOT=$XDG_CONFIG_HOME/rbenv
. <(rbenv init -)

# aliases
alias rb='rbenv'

__rbenv_ps1 ()
{
  printf "$1" "$(rbenv version-name)"
}
