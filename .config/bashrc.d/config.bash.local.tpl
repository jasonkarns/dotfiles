# vi: ft=bash
#
# machine-specific and sensitive config
# this op-template file is versioned but not the populated outfile
# secrets are read from 1password and the resulting outfile gitignored

for config in "${XDG_CONFIG_HOME:?}"/bashrc.d/*.sh.mac; do
  test -r "$config" && . "$config"
done
