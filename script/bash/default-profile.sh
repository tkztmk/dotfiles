#!/usr/bin/env bash
# set some Environment Variable. 
export EDITOR=vim
export TERM=xterm-256color
export LANG=en_US.utf8

# find and load git-completion.bash
for s in $(find $(find /usr/share/doc -maxdepth 1 -name git-*) /usr/share/git \
  -name git-completion.bash); do
  . $s
done

# add to $PATH and rehash. 
. ~/local/add-path.sh
hash -r

# initialize rbenv. 
eval "$(rbenv init -)"

