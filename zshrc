# Path to your oh-my-zsh installation.
export ZSH="/home/thithib/.shell/oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="tjkirch"

plugins=(git systemd)

source $ZSH/oh-my-zsh.sh

# Source all generic and zsh-specific config from ~/.shell, in correct order
for conf_file in ~/.shell/*.{,z}sh ; do
	source "$conf_file"
done
