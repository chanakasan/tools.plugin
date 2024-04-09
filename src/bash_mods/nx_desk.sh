nx_desk() {
  local arg=$1
  if [ "$arg" == "add" ]; then
    _desk_add ${@:2}
    return 0
  fi
  local desk_path=$(_desk_find $arg)
  if [ -d "$desk_path" ]; then
    cd $desk_path
  else
    echo " desk not found: $arg"
  fi
}

nx_mux_cd2() {
  local name="$1"
  local base=$HOME/$2
  if [ -z $base ]; then
    echo " Usage:  nx_mux_cd <session_name> <dir_path>"
    exit 1
  fi
  local is_tmux=$(tmux-nested)
  local current=$(tmux-current-session)
  if [ "$current" == "$name" ]; then
    cd "$base"
  else
    mux $name
  fi
}