source $nex_mods_path/lib/underscore/cd.sh

nx_underscore() {
  local main_cmd="_ $1 $2"
  local fn=nx__$1
  if [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  else
    nex "$@"
    # echo " not found: $main_cmd"
  fi
}
