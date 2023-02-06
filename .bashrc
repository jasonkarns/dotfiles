# vi: ft=bash

# shell options
shopt -s dirspell globstar histappend histverify nocaseglob nullglob

for config in "${XDG_CONFIG_HOME:?}"/bashrc.d/*.bash{,.local}; do
  test -r "$config" && . "$config"
done
