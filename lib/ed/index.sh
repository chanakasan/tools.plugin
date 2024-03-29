#!/bin/bash

source $nex_mods_path/lib/ed/vscode.sh
source $nex_mods_path/lib/ed/vim.sh

nx_ed() {
  local a1="$1"
  local a2="$2"
  local fn=_ed_$a1
  if [ -z "$a1" ]; then
    ed_umod
  elif [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  else
    print_usage
    wait_for_key
  fi
}

nx_ed_tmux() {
	tmux popup -E -d '#{pane_current_path}' -w 90% -h 100% -- nx_ed $@
}

wait_for_key() {
  echo "Press any key to continue"
  while [ true ]; do
    read -t 5 -n 1
    if [ $? = 0 ]; then
      exit
    else
      echo "waiting for the keypress"
    fi
  done
}

print_usage() {
  echo "Usage: ed <type> <file>"
}

open_lab() {
  cd $type_dir
  vscode $type_dir
  mux new
}

ed_umod() {
  _ed_umod
}