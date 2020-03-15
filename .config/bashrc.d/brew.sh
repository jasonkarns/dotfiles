# set this manually; it's faster than: eval "$(brew shellenv)"
# this is the default, but other scripts rely on them to avoid $(brew --prefix)
export HOMEBREW_PREFIX=/usr/local

# disable analytics
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"
