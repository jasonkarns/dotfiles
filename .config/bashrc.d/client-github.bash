__chwd_hook --entering ~/Projects/github/github <<-'ON_ENTER'
  echo "entering github"

  PATH="$HOME/Projects/github/github/bin:$PATH"
  export GIT_COMPLETION_CHECKOUT_NO_GUESS=1

  rbenv shell github
  nodenv shell github
ON_ENTER

__chwd_hook --leaving ~/Projects/github/github <<-'ON_LEAVE'
  echo "leaving github"

  PATH="${PATH#$HOME/Projects/github/github/bin:}"
  unset GIT_COMPLETION_CHECKOUT_NO_GUESS

  rbenv shell --unset
  nodenv shell --unset
ON_LEAVE
