#########################
# ruby
#########################

#alias rdbm='rake db:migrate db:test:prepare'
#alias bers='be rspec --drb'
#alias spork2='be spork --port 9090'
#alias bers2='RSPEC_DRB=9090 be rspec --drb'

export RUBYOPT=-rubygems


#########################
# bundler
#########################

# aliases
alias be='bundle exec'

# bash completion
[[ -f ~/.bash/bundler_completion.sh ]] && source ~/.bash/bundler_completion.sh


#########################
# rbenv
#########################

# path and setup
export PATH="~/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# aliases
alias rb='rbenv'

__rbenv_ps1 ()
{
  local rbenv_version=$(rbenv version | sed -e 's/ .*//')
  printf "$1" "$rbenv_version"
}
