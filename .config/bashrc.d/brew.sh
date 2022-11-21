# set this manually; it's faster than: eval "$(brew shellenv)"
# this is the default, but other scripts rely on them to avoid $(brew --prefix)
export HOMEBREW_PREFIX=/opt/homebrew # (/usr/local on intel arch)

# disable analytics
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"

# don't install the following formula when running brew-bundle
# export HOMEBREW_BUNDLE_BREW_SKIP=
# export HOMEBREW_BUNDLE_CASK_SKIP=
