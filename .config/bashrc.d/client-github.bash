# shellcheck disable=1004,2016

export GIT_COMPLETION_CHECKOUT_NO_GUESS=0

github_dotcom_enter() {
  echo "entering github"
  GIT_COMPLETION_CHECKOUT_NO_GUESS=0
  PATH="$HOME/Projects/github/github/bin:$PATH"
}

github_dotcom_leave() {
  echo "leaving github"
  GIT_COMPLETION_CHECKOUT_NO_GUESS=1
  PATH="${PATH#$HOME/Projects/github/github/bin:}"
}

__chwd_hook --entering ~/Projects/github/github 'github_dotcom_enter'
__chwd_hook --leaving ~/Projects/github/github 'github_dotcom_leave'
