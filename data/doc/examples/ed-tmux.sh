#!/bin/bash

main() {
	if [ "$nex_use_tmux" == "true" ]; then
		nx_ed_tmux $@
	else
		nx_ed $@
	fi
}

nx_ed_tmux() {
	tmux popup -E -d '#{pane_current_path}' -w 90% -h 100% -- nx_ed $@
}
