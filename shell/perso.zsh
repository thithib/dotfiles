# https://github.com/thestinger/termite/#id1
if [[ $TERM == xterm-termite ]]; then
	. /etc/profile.d/vte.sh
	__vte_osc7
fi

# opam configuration
test -r /home/thithib/.opam/opam-init/init.zsh &&
	. /home/thithib/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# zsh options
setopt chase_links
