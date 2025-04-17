# PATH configuration
# export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/ruby/bin:$PATH"

# XDG locations
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/user/$UID"

# Ghostty config
unalias sudo 2>/dev/null
if [[ -n $GHOSTTY_RESOURCES_DIR ]]; then
  source "$GHOSTTY_RESOURCES_DIR"/shell-integration/zsh/ghostty-integration
fi

# Path to your Oh My Zsh installation
export ZSH="$HOME/.config/oh-my-zsh"

# AWS CLI
export AWS_SHARED_CREDENTIALS_FILE="$XDG_CONFIG_HOME/aws/credentials"
export AWS_CONFIG_FILE="$XDG_CONFIG_HOME/aws/config"

# Bash
export HISTFILE="$XDG_STATE_HOME/bash/history"

# Boto
export BOTO_CONFIG="$XDG_CONFIG_HOME/gcloud/boto"

# Docker
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# Gradle
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"

# Node.js
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_repl_history"

# NPM
export NPM_CONFIG_INIT_MODULE="$XDG_CONFIG_HOME/npm/config/npm-init.js"
export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
export NPM_CONFIG_TMP="$XDG_RUNTIME_DIR/npm"

# NVM
export NVM_DIR="$XDG_DATA_HOME/nvm"

# PostgreSQL
export PSQL_HISTORY="$XDG_STATE_HOME/psql_history"

# Python
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/pythonrc"
# export PYTHON_HISTORY="$XDG_STATE_HOME/python_history"  # Uncomment for Python >= 3.13.0a3

# Ruby Bundler
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle"
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_STATE_HOME/zsh/history"

# Oh My Zsh settings
ZSH_THEME="pygmalion"
ZSH_THEME_RANDOM_CANDIDATES=("robbyrussell" "agnoster")
CASE_SENSITIVE="true"
zstyle ':omz:update' mode auto
DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"  # Set to "false" if you prefer to disable correction
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=()

source $ZSH/oh-my-zsh.sh
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"

# Custom aliases
[[ -f $ZSH_CUSTOM/aliases.zsh ]] && source $ZSH_CUSTOM/aliases.zsh
# Ensure sudo alias is removed
unalias sudo 2>/dev/null
