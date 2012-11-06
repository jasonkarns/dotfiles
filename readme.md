Installation
============

1. `git clone --no-checkout https://github.com/jasonkarns/dotfiles.git`
2. `git config core.worktree="../../"`
3. `git config core.sparsecheckout=true`
4. write .git/info/sparse-checkout
5. write .git/info/exclude
6. `git checkout master`
7. `echo "gitdir: ~/dotfiles/.git" > ~/.git`
8. `git submodule update`
9. `vim +BundleInstall +qall`