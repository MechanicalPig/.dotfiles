# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom'
fi

# homebrew
export PATH="/usr/local/bin:$PATH"

# libpq
export PATH="/usr/local/opt/libpq/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# poetry
export PATH="$HOME/.poetry/bin:$PATH"

# pyenv
command -v pyenv && eval "$(pyenv init -)"
command -v pyenv-virtualenv && eval "$(pyenv virtualenv-init -)"
alias pa="pyenv activate"
alias pd="pyenv deactivate"

# sqlite
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"

# zlib
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

# openssl
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

# enable iTerm2 shell integration
ITERM2_SHELL_INTEGRATION_SCRIPT="~/.iterm2_shell_integration.zsh"
[ -s $ITERM2_SHELL_INTEGRATION_SCRIPT ] && . $ITERM2_SHELL_INTEGRATION_SCRIPT

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
if [[ -s $ZPLUG_HOME/init.zsh ]]; then
  source $ZPLUG_HOME/init.zsh

  # self update
  zplug "zplug/zplug", hook-build:"zplug --self-manage"
  zplug "plugins/aws", from:oh-my-zsh
  zplug "hschne/fzf-git"
  zplug "atweiden/fzf-extras", as:command
  zplug "andrewferrier/fzf-z"
  zplug "plugins/git", from:oh-my-zsh
  zplug "plugins/z", from:oh-my-zsh
  zplug "spacchetti/spago", from:gh-r, as:command
  zplug "subnixr/minimal", from:github, as:theme, use:minimal.zsh

  # Install plugins if there are plugins that have not been installed
  if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
      echo; zplug install
    fi
  fi

  # Then, source plugins and add commands to $PATH
  zplug load --verbose
fi
