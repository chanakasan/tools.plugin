nx_repl() {
  local a1="$1"
  local name=$a1
  local dir=$HOME/spaces/repl/$name
  if [ -z "$a1" ]; then
    echo "mod_repl: missing args <name>" 
    return
  fi
  if [ ! -d "$dir" ]; then
    echo " not found: $dir" 
    return
  fi
  vscode $dir
}
