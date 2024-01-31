nx_new() {
  local v="$1"
  local fn=_new_$v
  if [ -z "$v" ]; then
    echo "mod_new: missing args <subcommand>" 
    print_usage
    exit 1
  fi

  if [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  else
    print_usage
  fi
}

print_usage() {
  echo "uage"
}
