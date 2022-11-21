# set this manually; it's faster than: eval "$(brew shellenv)"
# this is the default, but other scripts rely on them to avoid $(brew --prefix)
export HOMEBREW_PREFIX=/opt/homebrew # (/usr/local on intel arch)

# disable analytics
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"

# wire homebrew's paths into standard tooling; see `brew shellenv`
export PATH="${HOMEBREW_PREFIX:?}/bin:${HOMEBREW_PREFIX:?}/sbin${PATH+:$PATH}"
export HOMEBREW_CELLAR="${HOMEBREW_PREFIX:?}/Cellar"
export HOMEBREW_REPOSITORY="${HOMEBREW_PREFIX:?}"
export MANPATH="${HOMEBREW_PREFIX:?}/share/man${MANPATH+:$MANPATH}:"
export INFOPATH="${HOMEBREW_PREFIX:?}/share/info:${INFOPATH:-}"

# explicitly skip formulae from Brewfiles; space-separated
# export HOMEBREW_BUNDLE_BREW_SKIP=
# export HOMEBREW_BUNDLE_CASK_SKIP=
# export HOMEBREW_BUNDLE_MAS_SKIP=
# export HOMEBREW_BUNDLE_WHALEBREW_SKIP=
# export HOMEBREW_BUNDLE_TAP_SKIP=
