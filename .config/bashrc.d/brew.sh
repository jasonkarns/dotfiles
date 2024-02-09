# set this explicitly; it's faster than: eval "$(brew shellenv)"
# this is the default, but other scripts rely on them to avoid overhead of $(brew --prefix)
# /opt/homebrew on apple silicon; /usr/local on intel
export HOMEBREW_PREFIX=/opt/homebrew

# wire homebrew's paths into standard tooling; see `brew shellenv`
export HOMEBREW_CELLAR="${HOMEBREW_PREFIX:?}/Cellar"
export HOMEBREW_REPOSITORY="${HOMEBREW_PREFIX:?}"
export PATH="${HOMEBREW_PREFIX:?}/bin:${HOMEBREW_PREFIX:?}/sbin${PATH+:$PATH}"
export MANPATH="${HOMEBREW_PREFIX:?}/share/man${MANPATH+:$MANPATH}:"
export INFOPATH="${HOMEBREW_PREFIX:?}/share/info:${INFOPATH:-}"

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
