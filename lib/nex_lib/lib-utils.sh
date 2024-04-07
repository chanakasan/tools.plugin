confirm() {
  local response=""
  read -p "$1 (y/n) ? " response
  if [ "$response" == "y" ] || [ "$response" == "yes" ]; then
    return 0
  else
    return 1
  fi
}

main_script_dir() {
  echo $(dirname "$0")
}

