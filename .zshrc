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
ZSH_THEME="powerlevel9k/powerlevel9k"

#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="┌"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="└[$] "
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)

POWERLEVEL9K_HOME_ICON=''

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
  docker  git zsh-syntax-highlighting zsh-autosuggestions
)

#
# Load ZSH
#
source $ZSH/oh-my-zsh.sh

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

#-----------------------------------------------------------------------------------------------
#
# .dotfiles
#
#-----------------------------------------------------------------------------------------------

#
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# 
for file in ~/.{exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
###-tns-completion-start-###
if [ -f /home/mono/.tnsrc ]; then 
    source /home/mono/.tnsrc 
fi
###-tns-completion-end-###

export ANDROID_HOME=~/Android/Sdk
export PATH=~/Android/Sdk/tools:~/Android/Sdk/tools/bin:$PATH

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
# OS Based custom config
#
#-----------------------------------------------------------------------------------------------

#
# Source vte.sh for Tilix on Ubuntu 18
#
OS_FLAVOUR=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
OS_CODENAME=$(awk -F= '/^VERSION_CODENAME/{print $2}' /etc/os-release)

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi
