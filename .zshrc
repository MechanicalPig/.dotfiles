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

# PYENV
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
# alias pa="pyenv activate"
# alias pd="pyenv deactivate"
