
# initialize completion

autoload -U compinit
compinit

# antigen settings

source ~/.zsh/antigen/antigen.zsh

antigen-lib

oh_my_zsh_plugins=(
  'archlinux' 'bundler' 'gem' 'git' 'github' 'gnu-utils' 
  'heroku' 'jake-node' 'jruby' 'mercurial' 'mvn' 
  'node' 'npm' 'perl' 'pip' 'python' 'rails3' 'rake' 'rbenv' 'ruby' 'svn' 
  'vi-mode' 'yum')

for p in "${oh_my_zsh_plugins[@]}"; do
  antigen-bundle "$p"
done

zsh_users_plugins=(
  zsh-completions zsh-syntax-highlighting)

for p in "${zsh_users_plugins[@]}"; do
  antigen-bundle "zsh-users/$p"
done

antigen-theme bira 

antigen-apply

# add ~/.zsh/site-functions to fpath

fpath=(~/.zsh/site-functions $fpath)

# we should use the vi keybind, shouldn't we? 

bindkey -v 
bindkey "^P" up-line-or-history
bindkey "^N" down-line-or-hisoty


