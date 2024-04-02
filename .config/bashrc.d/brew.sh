eval "$(PATH=/opt/homebrew/bin:/usr/local/bin"${PATH+:$PATH}" brew shellenv)"

# disable analytics
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"

# explicitly skip formulae from Brewfiles; space-separated
# set the vars so they can be appended elsewhere
export HOMEBREW_BUNDLE_BREW_SKIP=
export HOMEBREW_BUNDLE_CASK_SKIP=
export HOMEBREW_BUNDLE_MAS_SKIP=
export HOMEBREW_BUNDLE_WHALEBREW_SKIP=
export HOMEBREW_BUNDLE_TAP_SKIP=
