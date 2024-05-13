.SECONDEXPANSION:

.SHELLFLAGS = -euo pipefail

rbenv_root = /opt/rbenv
nodenv_root = /opt/nodenv
rbenv_plugindir = $(rbenv_root)/plugins
nodenv_plugindir = $(nodenv_root)/plugins
rbenv_plugins = $(addprefix $(rbenv_plugindir)/,\
  tpope/rbenv-aliases \
  ianheggie/rbenv-binstubs \
  aripollak/rbenv-bundler-ruby-version \
  tpope/rbenv-ctags \
  sstephenson/rbenv-default-gems \
  chriseppstein/rbenv-each \
  ianheggie/rbenv-env \
  mlafeldt/rbenv-man \
  rkh/rbenv-update \
  jasonkarns/ruby-build-update-defs)
nodenv_plugins = $(addprefix $(nodenv_plugindir)/nodenv/,\
  node-build-update-defs \
  nodenv-aliases \
  nodenv-default-packages \
  nodenv-each \
  nodenv-man \
  nodenv-package-json-engine \
  nodenv-package-rehash \
  nodenv-update)

all: | rbenv nodenv vim npm gpg

rbenv: $(rbenv_plugins)
	@echo '==> Updating rbenv…'
	rbenv update
	brew rbenv-sync
	rbenv alias --auto
	rbenv alias brew `brew ruby -e 'puts RUBY_BIN.dirname'`
	rbenv rehash
nodenv: $(nodenv_plugins)
	@echo '==> Updating nodenv…'
	nodenv update
	brew nodenv-sync
	nodenv alias --auto
	nodenv rehash
vim:
	@echo '==> Setting up vim…'
	vim +PluginUpdate +PluginClean +qall
npm:
	@echo '==> Updating npm…'
	NODENV_VERSION=system npm update -g
gpg:
	@if command -v keybase; then echo '==> Updating keybase/gpg…'; \
		keybase pgp pull; fi
prefs:
	dotfiles/prefs


$(rbenv_root) $(nodenv_root):
	sudo install -o "${USER}" -g staff -d $@

%/plugins: | $$(@D)
	install -o "${USER}" -g staff -d $@

$(rbenv_plugins): $(rbenv_plugindir)/%: | $$(@:/%=)
	@[ -d $|/$(@F) ] || git -C $| clone https://github.com/$*.git

$(nodenv_plugins): $(nodenv_plugindir)/%: | $$(@:/%=)
	@[ -d $|/$(@F) ] || git -C $| clone https://github.com/$*.git
