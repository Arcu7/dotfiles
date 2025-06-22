# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Functions from bash_functions
if [ -f "$HOME/.local/bin/bash_functions" ]; then
  . "$HOME/.local/bin/bash_functions" # Using '.' (source)
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc
export GOPATH=$HOME/go
. "$HOME/.cargo/env"

# add glob expansion for bash
shopt -s extglob

# bat aliases
alias cat='bat --paging=never'

# go test aliases
alias gtb='go test -v -bench'
alias gtbm='go test -v -bench . -benchmem'
alias gtc='go test -v -cover'
alias gtv='go test -v'

# eza aliases
alias ls='eza --header --icons --git'
alias ll='ls -alF'
alias la='ls -A'

# change directory to the neovim configuration directory
alias nvconf='cd ~/.config/nvim'

# git aliases
alias fch='git diff --shortstat'      # see how many files have changed in the current git repository
alias explode='git reset --hard @{u}' # git hard reset to upstream
alias lg='lazygit'                    # lazygit

# rsync aliases
alias grtpc='rsync_git_repo pc:/home/rifaldo/work/sms-be/'
alias grtlap='rsync_git_repo laptop:/home/rifaldo/work/sms/be-sales-management-system/'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

eval "$(starship init bash)"
