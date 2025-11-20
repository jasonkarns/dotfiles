# vi: ft=bash
#
# machine-specific and sensitive config
# this op-template file is versioned but not the populated outfile
# secrets are read from 1password and the resulting outfile gitignored

for config in "${XDG_CONFIG_HOME:?}"/bashrc.d/*.sh.mac; do
  test -r "$config" && . "$config"
done

printf -v CODEPATH -- "${HOME:?}/Projects/%s:" '' bats nodenv rbenv td standardrb sundaysfordogs

# used by both hub and gh clis
# export GITHUB_TOKEN="{{ op://Private/GITHUB_TOKEN old/credential }}"

export NPMJS_AUTHTOKEN="{{ op://Private/NPMJS_AUTHTOKEN/credential }}"
export GHPR_AUTHTOKEN="{{ op://Private/GHPR_AUTHTOKEN/credential }}"
