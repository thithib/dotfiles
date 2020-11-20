# https://github.com/thestinger/termite/#id1
if [[ $TERM == xterm-termite ]]; then
	. /etc/profile.d/vte.sh
	__vte_prompt_command
fi

export PS1='\h:\W\$ '
