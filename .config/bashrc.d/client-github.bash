# shellcheck disable=1004,2016

export GIT_COMPLETION_CHECKOUT_NO_GUESS=0

__chwd_hook '[[ "$PWD" != "$HOME/Projects/github/github"* ]]; GIT_COMPLETION_CHECKOUT_NO_GUESS=$?'
__chwd_hook 'if [[ "$PWD" == "$HOME/Projects/github/github"* ]]; \
              then HOMEBREW_BUNDLE_BREW_SKIP="awssume docker docker-machine"; \
              else unset HOMEBREW_BUNDLE_BREW_SKIP; \
            fi'
