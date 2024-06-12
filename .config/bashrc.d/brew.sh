eval "$(PATH=/opt/homebrew/bin:/usr/local/bin:$PATH brew shellenv)"

# see also $XDG_CONFIG_HOME/homebrew/brew.env

# explicitly skip formulae from Brewfiles; space-separated
# set the vars so they can be appended elsewhere
export HOMEBREW_BUNDLE_BREW_SKIP=
export HOMEBREW_BUNDLE_CASK_SKIP=
export HOMEBREW_BUNDLE_MAS_SKIP=
export HOMEBREW_BUNDLE_WHALEBREW_SKIP=
export HOMEBREW_BUNDLE_TAP_SKIP=
