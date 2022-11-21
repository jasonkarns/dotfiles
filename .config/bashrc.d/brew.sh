# set this manually; it's faster than: eval "$(brew shellenv)"
# this is the default, but other scripts rely on them to avoid $(brew --prefix)
export HOMEBREW_PREFIX=/opt/homebrew;

# disable analytics
export HOMEBREW_NO_ANALYTICS=1

export HOMEBREW_CACHE="$XDG_CACHE_HOME/Homebrew"

# don't install the following formula when running brew-bundle
export HOMEBREW_BUNDLE_BREW_SKIP="rakudo-star mkcert nss aws-iam-authenticator docker docker-machine awscli awssume imagemagick kubectl@1.14 kustomize@2.0 container-diff"
export HOMEBREW_BUNDLE_CASK_SKIP="github/bootstrap/zulu8"
