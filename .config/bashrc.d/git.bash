#########################
# aliases
#########################

alias gs='git status'
alias gap='git add -p'
alias grp='git reset -p'
alias gd='git diff'
alias gdword='git diff --color-words'
alias gdc='git diff --cached'
alias gx='gitx --all'

alias hubs='GITHUB_HOST=github.shuttercorp.net hub'
alias gists='GITHUB_URL=https://github.shuttercorp.net gist'

# disable DWIM guessing for branch name completion for checkout
__git_completion_checkout_no_guess() {
  if [[ $PWD/ =~ /shutterstock/base-web/ ]]; then
    export GIT_COMPLETION_CHECKOUT_NO_GUESS=1
  else
    unset GIT_COMPLETION_CHECKOUT_NO_GUESS
  fi
}

after_cd __git_completion_checkout_no_guess

#########################
# contrib
#########################

# new-workdir
PATH="$PATH:/usr/local/share/git-core/contrib/workdir"
