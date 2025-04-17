fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit && compinit

# GCloud SDK
[[ -f "$HOME/Developer/google-cloud-sdk/path.zsh.inc" ]] && source "$HOME/Developer/google-cloud-sdk/path.zsh.inc"
[[ -f "$HOME/Developer/google-cloud-sdk/completion.zsh.inc" ]] && source "$HOME/Developer/google-cloud-sdk/completion.zsh.inc"

