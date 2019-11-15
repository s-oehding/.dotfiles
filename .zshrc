# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#-----------------------------------------------------------------------------------------------
#
# $PATH Config
#
#-----------------------------------------------------------------------------------------------
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#
# Path to your oh-my-zsh installation.
#
export ZSH=/home/mono/.oh-my-zsh
export TERM="xterm-256color"

#-----------------------------------------------------------------------------------------------
#
# Oh-My-ZSH Config
#
#-----------------------------------------------------------------------------------------------

#
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME=powerlevel10k/powerlevel10k

#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="┌"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="└[$] "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status battery)

POWERLEVEL9K_HOME_ICON=''

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-stash git-remotebranch git-tagname)
POWERLEVEL9K_VCS_INCOMING_CAHNGES_ICON="↓"
POWERLEVEL9K_VCS_OUTGOING_CAHNGES_ICON="↑"

POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -f`"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="yellow"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="black"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="white"
POWERLEVEL9K_STATUS_FOREGROUND="010"
POWERLEVEL9K_STATUS_BACKGROUND="235"
POWERLEVEL9K_DIR_HOME_BACKGROUND="235"
POWERLEVEL9K_DIR_HOME_FOREGROUND="010"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="235"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="010"

COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="dd.mm.yyyy"

#
# ZSH Plugins
#
plugins=(
  docker git vundle zsh-syntax-highlighting zsh-autosuggestions
)

#
# Load ZSH
#
source $ZSH/oh-my-zsh.sh
export PAGER="most"

#-----------------------------------------------------------------------------------------------
#
# User Config
#
#-----------------------------------------------------------------------------------------------

#
# You may need to manually set your language environment
#
export LANG=de_DE.UTF-8

#
# ssh
#
export SSH_KEY_PATH="~/.ssh/id_rsa"

#-----------------------------------------------------------------------------------------------
#
# Node.js
#
#-----------------------------------------------------------------------------------------------

#
# 01. NVM Source Command
#
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#
# 02. Yarn Path
#
export PATH="$PATH:`yarn global bin`"

#-----------------------------------------------------------------------------------------------
#
# MongoDb
#
#-----------------------------------------------------------------------------------------------

#
# 01. Mongo Version manager binary path
#
export PATH=~/.mongodb/versions/mongodb-current/bin:$PATH


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pulse/extra/usr/lib/x86_64-linux-gnu/

#-----------------------------------------------------------------------------------------------
#
# Mondia Media specific
#
#-----------------------------------------------------------------------------------------------

#
# Nomad
#
export NOMAD_ADDR=http://nomad.service.consul:4646

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
