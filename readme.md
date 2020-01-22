Installation
============

1. `git clone --no-checkout https://github.com/jasonkarns/dotfiles.git`
2. `git config core.worktree "$HOME"`
3. `git config core.sparseCheckout true`
4. `printf '/*\n!readme.md' | git sparse-checkout set --stdin`
5. `git checkout master`
6. `echo "gitdir: ~/dotfiles/.git" > ~/.git`
7. `git submodule update`
8. `vim +PluginInstall +qall`
