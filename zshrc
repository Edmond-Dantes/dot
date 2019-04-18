source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"

zplug "zsh-users/zsh-syntax-highlighting"

zplug "junegunn/fzf-bin", \
  from:gh-r, \
  as:command, \
  rename-to:fzf, \
  use:"*darwin*amd64*"

zplug "stedolan/jq", \
  from:gh-r, \
  as:command, \
  rename-to:jq

zplug "b4b4r07/emoji-cli", \
  on:"stedolan/jq"

# Load theme file
zplug 'dracula/zsh', as:theme

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load
