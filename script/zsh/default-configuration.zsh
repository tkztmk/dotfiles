# Constants
tkztmk_large_num=4294967296

# initialize completion

autoload -U compinit
compinit

# antigen loading settings

# global variable '$antigen_bundles_array' 
tkztmk_antigen_bundles=()

# global variable '$antigen_theme'
tkztmk_antigen_theme=bira

reload-antigen(){
  source ~/.zsh/antigen/antigen.zsh
  antigen-lib
  for bundle in $tkztmk_antigen_bundles; do
    antigen-bundle "$bundle"
  done
  antigen-theme "$tkztmk_antigen_theme"
  antigen-apply
}

load-antigen-groups(){
  for group in "$@"; do
    source "$HOME/script/zsh/antigen/group/$group.zsh"
  done
  reload-antigen
}

# history settings. 
HISTFILE=~/.zsh/history/HISTFILE
HISTSIZE=$tkztmk_large_num
SAVEHIST=$tkztmk_large_num
setopt share_history


# add ~/.zsh/site-functions to fpath

fpath=(~/.zsh/site-functions $fpath)

# we should use the vi keybind, shouldn't we? 

bindkey -v 
bindkey "^P" up-line-or-history
bindkey "^N" down-line-or-hisoty

# load git completion. 

autoload bashcompinit
bashcompinit
source ~/repo/external/git/contrib/completion/git-completion.bash

export EDITOR=vim
export TERM=xterm-256color
export LANG=en_US.utf8

source ~/local/add-path.sh
hash -r

eval "$(rbenv init -)"

# load default groups
# better to be loaded last! 
load-antigen-groups base vi

