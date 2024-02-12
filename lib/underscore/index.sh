source $nex_mods_path/lib/underscore/cd.sh

nx_underscore() {
  local verb="$1"
  local arg="$2"
  local fn=nx__$verb
  local main_cmd="_ $verb $arg"
  if [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  else
    echo " not found: $main_cmd"
  fi
}
