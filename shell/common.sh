# Stuff shared by both bash and zsh

# Colors-related aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

# "ls"-related aliases
alias l=ls
alias la='ls --human-readable --almost-all'
alias ll='ls --human-readable -l'
alias lla='ls --human-readable -l --all'

# Misc.
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias zshconfig='vim ~/.zshrc'
#alias startw='. /usr/local/bin/sway-service.sh'
alias startw=_startw
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Overload and others
alias _='sudo '
alias c=cd
alias cp='cp --interactive'
alias df='df --human-readable'
alias gdb='gdb -quiet'
alias m=make
alias md='mkdir -p'
alias mv='mv --interactive'
alias objdump='objdump --disassembler-options=att'
alias p=pwd
alias rd=rmdir
alias ssh='TERM=xterm-color ssh'
alias v='rview -'
alias vi=vim
alias view=rview

# Shortcuts to some very frequently used directories
alias cdk="cd ${HOME}/work/linux/linux.git"

# Git aliases (extend oh-my-zsh git plugin)
alias gsh='git show'
alias gshs='git show --show-signature'
alias gpf='git push --force'
alias gposv='git push -o skip-validation'
alias gh='git help'
alias gbD='git branch --delete --force'
alias glgs='git log --show-signature'
alias glom='git log --oneline --merges'
alias gmv='git mv'
alias gcs='git commit --signoff'
alias gcas='git commit --verbose --all --signoff'

# Environment variables
export EDITOR='vim'
export GPG_TTY=$(tty)

# Use hardened_malloc for mutt and zathura
alias mutt='LD_PRELOAD=/usr/lib/libhardened_malloc.so mutt'
alias zathura='LD_PRELOAD=/usr/lib/libhardened_malloc.so zathura'

# Fonctions

## Start sway with environment variables and logging
_startw() {
	local sway_env_file="$HOME/.config/sway/env"
	[[ -f $sway_env_file ]] || return 1

	local var
	while read var; do
		export "$var"
	done < "$sway_env_file"

	exec sway &>> "$XDG_RUNTIME_DIR/sway.log"
}

## Show weather forecasts
weather() {
	local request='https://wttr.in'
	if [[ $# -lt 1 ]] ; then
		request+='/paris+france'
	else
		request+='/{'
		for location in $@ ; do
			request+="$location,"
		done
		request="${request:0:-1}}"
	fi
	request+='?F'
	curl "$request"
}

