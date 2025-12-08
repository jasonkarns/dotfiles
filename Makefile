.DEFAULT_GOAL := all
.SECONDEXPANSION:
.SHELLFLAGS = -euo pipefail

XDG_CONFIG_HOME ?= ~/.config
bashrcd = $(XDG_CONFIG_HOME)/bashrc.d

secrets := $(patsubst %.tpl,%,$(wildcard $(bashrcd)/*.local.tpl))

rbenv_root := /opt/rbenv
rbenv_plugins = $(addprefix $(rbenv_root)/plugins/,\
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

nodenv_root := /opt/nodenv
nodenv_plugins = $(addprefix $(nodenv_root)/plugins/nodenv/,\
  node-build-update-defs \
  nodenv-aliases \
  nodenv-default-packages \
  nodenv-each \
  nodenv-man \
  nodenv-package-json-engine \
  nodenv-package-rehash \
  nodenv-update)

.PHONY: all list clean env brew dots rbenv nodenv vim npm gpg prefs

all: env | brew dots rbenv nodenv vim npm gpg macos prefs

clean:
	rm -f $(secrets)

env: $(secrets)

# TODO bring this task in properly
brew:
	dotfiles/update brew
# TODO bring this task in properly
dots:
	dotfiles/update dots

macos:
	softwareupdate -l

rbenv: $(rbenv_plugins)
	@echo '==> Updating rbenv…'
	rbenv update
	brew rbenv-sync
	rbenv alias --auto
	@rbenv alias brew `brew ruby -e 'puts RUBY_BIN.dirname'`
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
	@echo '==> Updating keybase/gpg…'
	@if command -v keybase >/dev/null && keybase status; \
		then keybase pgp pull; fi
prefs:
	dotfiles/prefs


%.local : %.local.tpl
	op inject --in-file $< --out-file $@

$(rbenv_root) $(nodenv_root):
	sudo install -o "${USER}" -g staff -d $@

%/plugins: | $$(@D)
	install -o "${USER}" -g staff -d $@

$(rbenv_plugins): $(rbenv_root)/plugins/%: | $$(@:/%=)
	@[ -d $|/$(@F) ] || git -C $| clone https://github.com/$*.git

$(nodenv_plugins): $(nodenv_root)/plugins/%: | $$(@:/%=)
	@[ -d $|/$(@F) ] || git -C $| clone https://github.com/$*.git
