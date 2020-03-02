#########################
# ruby
#########################

# ruby is now keg_only in homebrew: https://github.com/Homebrew/homebrew-core/commit/b4bf45228a
PATH="${HOMEBREW_PREFIX:=$(brew --prefix)}/opt/ruby/bin:$PATH"

#########################
# irb
#########################

export IRBRC=$XDG_CONFIG_HOME/irb/config

#########################
# rubygems
#########################

export GEMRC=$XDG_CONFIG_HOME/gem/config.yml

# share gems across rubies b/c bundler is a thing
export GEM_HOME=$XDG_DATA_HOME/gem
export GEM_SPEC_CACHE=$GEM_HOME/specs

# ensure gem executables are in PATH
PATH="${GEM_HOME:=$(gem env gemdir)}/bin:$PATH"


#########################
# bundler
#########################

# https://github.com/bundler/bundler/pull/6024
export BUNDLE_USER_HOME=$XDG_CONFIG_HOME/bundler
export BUNDLE_USER_CONFIG=$BUNDLE_USER_HOME/config.yml
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundler
export BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundler

# above env vars aren't respected as of 1.16.1
export BUNDLE_CONFIG=$BUNDLE_USER_CONFIG # until new version is released

#########################
# rbenv
#########################

# store rubies XDG style
export RBENV_ROOT=${HOMEBREW_PREFIX:=$(brew --prefix)}/var/rbenv

if command -v rbenv &>/dev/null; then
  eval "$(rbenv init -)"
fi

export RUBY_CONFIGURE_OPTS="--with-readline-dir=${HOMEBREW_PREFIX:=$(brew --prefix)}/opt/readline"
