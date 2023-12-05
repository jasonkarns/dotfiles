__chwd_hook --entering ~/Projects/empora <<-'ON_ENTER'
  echo "entering empora"

HOMEBREW_BUNDLE_BREW_SKIP="ansible docker netcat poetry pre-commit sops zsh $HOMEBREW_BUNDLE_BREW_SKIP"
HOMEBREW_BUNDLE_CASK_SKIP="authy aws-vault dropbox iterm2 visual-studio-code $HOMEBREW_BUNDLE_CASK_SKIP"

ON_ENTER
