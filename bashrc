# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source all generic and bash-specific config from ~/.shell, in correct order
for conf_file in ~/.shell/*.{,ba}sh ; do
	source "$conf_file"
done

# Bash options
shopt -s autocd
shopt -s cdspell
shopt -so noclobber
