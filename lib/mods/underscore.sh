nx_underscore() {
  local verb="$1"
  local arg="$2"
  local fn=_u_$verb
  local cmd="_ $verb $arg"
  if [[ $(type -t $fn ) == function ]]; then
    $fn "${@:2}"
  else
    print_not_found
  fi
}

print_not_found() {
  echo " not found: $cmd"
}

_u_cd() {
  local name="$1"
  local root1=$HOME/dotfiles
  local path1=$root1/nex-$name
  if [ -d $path1 ]; then
    cd $path1
  else
    print_not_found
  fi
}