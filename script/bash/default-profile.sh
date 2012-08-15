#!/usr/bin/env bash
export EDITOR=vim
export TERM=xterm-256color
export LANG=en_US.utf8
. /usr/share/doc/git-*/contrib/completion/git-completion.bash
eval "$(rbenv init -)"
. ~/local/add-path.sh
hash -r

