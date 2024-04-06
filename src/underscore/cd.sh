nx__cd() {
  local main_cmd="_ cd $1"
  local name="$1"
  local root1=$HOME/dotfiles
  local path1=$root1/nex-$name
  local path2=$PWD/$name
  if [ -z $name ]; then
    echo " usage: _ cd <path>"
  elif [ -d $path1 ]; then
    cd $path1
  elif [ -d $path2 ]; then
    cd $name
  else
    echo " not found: $main_cmd"
  fi
}