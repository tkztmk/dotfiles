# basic plugins. probably loaded by default. 

tkztmk_antigen_bundles+=(
  gnu-utils
  )

local zsh_users_plugins
zsh_users_plugins=(
  zsh-completions zsh-syntax-highlighting)
for p in $zsh_users_plugins; do
  tkztmk_antigen_bundles+="zsh-users/$p"
done

tkztmk_antigen_bundles+=(
  kennethreitz/autoenv
  )

