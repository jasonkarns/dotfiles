# shell options
shopt -s dirspell globstar histappend histverify nocaseglob

declare -a BEFORE_CD_HOOKS AFTER_CD_HOOKS

before_cd() {
  local hook="$1"
  BEFORE_CD_HOOKS["${#BEFORE_CD_HOOKS[@]}"]="$hook"
}

after_cd() {
  local hook="$1"
  AFTER_CD_HOOKS["${#AFTER_CD_HOOKS[@]}"]="$hook"
}

source_supplementary_scripts(){
  # shellcheck disable=SC1090
  for config in "$@"; do test -r "$config" && source "$_"; done
}

source_supplementary_scripts "$XDG_CONFIG_HOME"/bashrc.d/**/*.bash{,.local}
