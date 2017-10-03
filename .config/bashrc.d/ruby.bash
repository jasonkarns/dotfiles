#########################
# ruby
#########################

export RUBYOPT=-rubygems


#########################
# rubygems
#########################

export GEMRC=$XDG_CONFIG_HOME/gem/config.yml
export GEM_SPEC_CACHE=$XDG_CACHE_HOME/gem/specs
# export GEM_PATH=$XDG_DATA_HOME/gem/ruby/*


#########################
# bundler
#########################

# https://github.com/bundler/bundler/pull/6024
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundler.yml
export BUNDLE_USER_CONFIG=$XDG_CONFIG_HOME/bundler
export BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundler

# aliases
alias be='bundle exec'

#########################
# rbenv
#########################

# store rubies under brew (or /usr/local)
export RBENV_ROOT=/usr/local/var/rbenv

if command -v rbenv &>/dev/null; then
  # initialize
  eval "$(rbenv init -)"

  # show active ruby version in PS1
  __rbenv_ps1() {
    # shellcheck disable=SC2059
    printf "$1" "$(rbenv version-name)"
  }
else
  __rbenv_ps1() {
    : # noop
  }
fi

export RUBY_CONFIGURE_OPTS="--with-readline-dir=$(brew --prefix readline)"
