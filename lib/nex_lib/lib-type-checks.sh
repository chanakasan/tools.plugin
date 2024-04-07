is_num() {
  if [ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null; then
    return 0
  else
    return 1
  fi
}

is_func() {
  if [[ $(type -t $1 ) == function ]]; then
    return 0
  else
    return 1
  fi
}

is_cmd() {
  if command -v $1 &> /dev/null; then
    return 0
  else
    return 1
  fi
}
