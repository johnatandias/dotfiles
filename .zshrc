if [ "$TERM" = "xterm" ]; then
  export TERM=xterm-256color
fi

export ZSH="$HOME/.oh-my-zsh"

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.dotfiles/.p10k.zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  yarn
  nvm
  adb
  battery
  docker-compose
  docker
  emoji
  gcloud
  history
  jira
  node
  npx
  vscode
  golang
  zsh-syntax-highlighting
  tmux
  vi-mode
)

source $ZSH/oh-my-zsh.sh

bindkey -v

alias vim='nvim'
alias zs='source ~/.zshrc'
alias ze='cd ~/.dotfiles && vim .zshrc'
alias ve='cd ~/.dotfiles/nvim && vim nvim/init.vim'
alias python='python3'
alias pip='pip3'
alias cat="bat"
alias copy='xclip -selection c'
alias paste='xclip -selection c -o'
alias tx='tmuxinator'
alias vf='vifm'
alias calendar='cal'
alias lg='lazygit'
alias tmux='tmux -2'
alias ls-size='du -sh * | sort -rh'
alias cls='clear'
eval $(thefuck --alias fix)

# Changing "ls" to "exa"
alias ls='exa -a --color=always --group-directories-first' # my preferred listing
alias la='exa -al --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

export EDITOR='nvim'
export TERMINAL='alacritty'

# Go lang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# Python
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib
export LDFLAGS="-L$HOME/.local"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PYTHON_BIN_PATH="$(python3 -m site --user-base)/bin"
export PATH="$PATH:$PYTHON_BIN_PATH"

# Java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$JAVA_HOME/bin:$PATH

# Android
export ANDROID_HOME=$HOME/Android
export ANDROID_SDK=$ANDROID_HOME/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools
export PATH=$PATH:$ANDROID_HOME/platforms
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH
export ANDROID_SDK_ROOT=$ANDROID_HOME/Sdk

# Yarn
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$(yarn global bin)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '