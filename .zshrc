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
  go
)

source $ZSH/oh-my-zsh.sh

alias code='code-insiders'
alias vim='nvim'
alias zs='source ~/.zshrc'
alias ze='vim ~/.zshrc'
alias python='python3'

export EDITOR='nvim'
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

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

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
