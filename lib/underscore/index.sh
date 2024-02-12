source $nex_mods_path/lib/underscore/cd.sh

nx_underscore() {
  local main_cmd="_ $1 $2"
  local fn=nx__$1
  if [[ "$(und_is_function $fn)" == "true" ]]; then
    $fn "${@:2}"
  else
    echo " not found: $main_cmd"
  fi
}

und_is_command() {
  local name="$1"
  if ! command -v $name &> /dev/null
  then
    echo false
  else
    echo true
  fi
}

und_is_function() {
  local name="$1"
  if [[ $(type -t $name ) == function ]]; then
    echo true
  else
    echo false
  fi
}

nx__hello() {
  echo Hello _underscore_  $1 !
}