# shell options
shopt -s dirspell globstar histappend histverify nocaseglob

for config in "$XDG_CONFIG_HOME"/bashrc.d/**/*.bash{,.local}; do
  # shellcheck disable=SC1090
  test -r "$config" && . "$_"
done

# all bashrc.d configs are sourced now, we can unset helpers
unset __chwd_hook
