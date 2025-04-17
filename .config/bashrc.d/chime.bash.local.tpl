# vi: ft=bash
#
# this op-template file is versioned but not the populated outfile
# secrets are read from 1password and the resulting outfile gitignored

# shellcheck disable=SC2034
printf -v CODEPATH -- "${HOME:?}/Projects/%s:" '' bats nodenv rbenv td chime

# handled by JAMF self-service
HOMEBREW_BUNDLE_BREW_SKIP+=" awscli"
HOMEBREW_BUNDLE_CASK_SKIP+=" 1password google-chrome slack zoom"
HOMEBREW_BUNDLE_CASK_SKIP+=" yubico-authenticator yubico-yubikey-manager"
# verboten
HOMEBREW_BUNDLE_CASK_SKIP+=" keybase"

export AWS_CONFIG_FILE=${AWS_CONFIG_FILE:?}.chime
export HUSKY=0

# root dir for all chime repos
export WORK_DIR_PATH=~/Projects/chime

# bundler
export LOCAL_GEM_PATH=$WORK_DIR_PATH

export ARTIFACTORY_READ_USER="{{ op://Employee/Artifactory/username }}"
export ARTIFACTORY_READ_TOKEN="{{ op://Employee/Artifactory/credential }}"
export GITHUB_TOKEN="{{ op://Employee/GitHub PAT/token }}"

export HOMEBREW_GITHUB_API_TOKEN="${GITHUB_TOKEN:?}"
export BUNDLE_GITHUB__COM="${GITHUB_TOKEN:?}:x-oauth-basic"
export BUNDLE_CHIME__JFROG__IO="${ARTIFACTORY_READ_USER:?}:${ARTIFACTORY_READ_TOKEN:?}"
ARTIFACTORY_NPM_AUTH="$(echo -n "${BUNDLE_CHIME__JFROG__IO:?}" | base64)"
export ARTIFACTORY_NPM_AUTH

export LOCALSTACK_AUTH_TOKEN="{{ op://Employee/Localstack/credential }}"

# otter
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools
