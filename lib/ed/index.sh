#!/bin/bash

source $nex_mods_path/lib/ed/vscode.sh
source $nex_mods_path/lib/ed/vim.sh

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
  _ed_inputrc
}

_ed_ssh() {
  _ed_ssh
}

_ed_rc() {
  _ed_bashrc
}

_ed_vrc() {
  _ed_vimrc
}

edit_umod() {
  _ed_umod
}
