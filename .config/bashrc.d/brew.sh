# setup paths for homebrew
eval "$(brew shellenv)"

# remove the redundant prepended paths
PATH=${PATH#/usr/local/bin:/usr/local/sbin:}

# disable analytics
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_CACHE=$XDG_CACHE_HOME/Homebrew
