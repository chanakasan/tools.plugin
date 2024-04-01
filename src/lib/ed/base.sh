#!/bin/bash

nx_ed() {
  local main_cmd="ed $1 $2 $3"
  local a1="$1"
  local a2="$2"
  local a3="$3"
  local fn=_ed_$a1
  local cmd1=_ed_$a1'_'$a2
  local cmd2=_ed_$a1
  if [ -z "$a1" ]; then
    _ed_sp
  elif [ "$(is_function $fn)" == "true" ]; then
    $fn "${@:2}"
  elif [ "$(is_command $cmd1)" == "true" ]; then
    $cmd1 "${@:3}"
  elif [ "$(is_command $cmd2)" == "true" ]; then
    $cmd2 "${@:2}"
  else
    echo " command not found: $main_cmd"
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
  echo " Usage: ed <type> <file>"
  echo
}

# start Lib
is_command() {
  local name="$1"
  if ! command -v $name &> /dev/null; then
    echo false
  else
    echo true
  fi
}

is_function() {
  local a1="$1"
  if [[ $(type -t $a1 ) == function ]]; then
    echo true
  else
    echo false
  fi
}
# end Lib
