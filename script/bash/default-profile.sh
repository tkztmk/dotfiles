#!/usr/bin/env bash
export EDITOR=vim
export TERM=xterm-256color
export LANG=en_US.utf8
for s in $(find $(find /usr/share/doc -maxdepth 1 -name git-*) /usr/share/git \
  -name git-completion.bash); do
  . $s
done


eval "$(rbenv init -)"
. ~/local/add-path.sh
hash -r

