autoload -U colors && colors
source ~/zsh-scripts/agnoster.zsh-theme
setopt promptsubst

CASE_SENSITIVE="false"
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' 
zmodload zsh/complist
compinit
#_comp_options+=(globdots)		# Include hidden files.

source ~/zsh-scripts/vi-mode.zsh
source ~/zsh-scripts/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
