export TERM="xterm-256color"
export ZSH="/home/johnatan/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

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
)

source $ZSH/oh-my-zsh.sh

alias code='code-insiders'
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
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools
export PATH=$PATH:$ANDROID_HOME/platforms
export ANDROID_SDK_ROOT=$ANDROID_HOME/Sdk

# Yarn
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$(yarn global bin)"

# Powerlevel9k configuration
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_CONTEXT_TEMPLATE="%n@$SHORT_HOST"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
POWERLEVEL9K_RAM_ICON="\uf85a"
POWERLEVEL9K_OS_ICON="$OS_ICON"
POWERLEVEL9K_HOME_ICON="\uf7db"
POWERLEVEL9K_HOME_SUB_ICON="\uf74b"
POWERLEVEL9K_FOLDER_ICON="\uf07b"
POWERLEVEL9K_ETC_ICON="\ue5fc"
POWERLEVEL9K_VCS_GIT_ICON="\uf1d3"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf113"
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='\uf5a7'
POWERLEVEL9K_VCS_GIT_GITLAB_ICON="\uf296"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=".."
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_first_and_last"
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND='white'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator ram dir_writable ssh context dir virtualenv vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [[ $VSCODE != true ]]; then
  if [ "$TMUX" = "" ]; then tmux; fi
fi
