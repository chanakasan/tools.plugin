#!/bin/bash

source $nex_mods_path/lib/mods/ed_vscode.sh
source $nex_mods_path/lib/mods/ed_vim.sh

nx_ed() {
  local a1="$1"
  local a2="$2"
  local fn=_ed_$a1
  if [ -z "$a1" ]; then
    edit_umod
  elif [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  else
    print_usage
    wait_for_key
  fi
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

_ed_inp() {
  edit_inputrc
}

_ed_ssh() {
  edit_ssh
}

_ed_rc() {
  edit_bashrc
}

_ed_vrc() {
  edit_vimrc
}

_ed_umod() {
  edit_umod
}
