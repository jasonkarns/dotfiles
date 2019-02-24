# shell options
shopt -s dirspell globstar histappend histverify nocaseglob

source_supplementary_scripts(){
  # shellcheck disable=SC1090
  for config in "$@"; do test -r "$config" && source "$_"; done
}

source_supplementary_scripts "$XDG_CONFIG_HOME"/bashrc.d/**/*.bash{,.local}

unset __chwd_hook source_supplementary_scripts
