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

# enable iTerm2 shell integration
ITERM2_SHELL_INTEGRATION_SCRIPT="~/.iterm2_shell_integration.zsh"
[ -s $ITERM2_SHELL_INTEGRATION_SCRIPT ] && . $ITERM2_SHELL_INTEGRATION_SCRIPT
