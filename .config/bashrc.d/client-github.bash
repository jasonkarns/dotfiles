export GIT_COMPLETION_CHECKOUT_NO_GUESS=0

# shellcheck disable=2016
__chwd_hook '[[ "$PWD" != "$HOME/Projects/github/github"* ]]; GIT_COMPLETION_CHECKOUT_NO_GUESS=$?'
