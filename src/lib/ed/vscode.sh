# open in vscodede
_ed_vim() {
  vscode $HOME/dotfiles/nex-vim
}

_ed_cli() {
  vscode $HOME/dotfiles/nex-cli
}

_ed_bash() {
  vscode $nex_bash_path
}

_ed_tmux() {
  vscode $nex_tmux_path
}

_ed_mux() {
  vscode $nex_mux_path
}

_ed_tools() {
  vscode $nex_tools_path
}

_ed_ed() {
  _ed_tools
}

_ed_git() {
  local nex_git_path=$HOME/dotfiles/nex-git
  vscode $nex_git_path
}

_ed_script() {
  local nex_devscript_path=$HOME/dotfiles/devscript
  vscode $nex_devscript_path
}

_ed_modules() {
  vscode $HOME/modules
}

_ed_lib() {
  local base=$HOME/groups/nexit/lib
  local type="$1"
  local type_name=$type-nex-lib
  local type_dir=$base/$type_name

  if [ -z "$type" ]; then
    echo " must provide lib <type>"
    exit 1
  fi

  if [ ! -d "$type_dir" ]; then
    echo "not_found: $type_name"
    return
  fi
  
  open_lab $type_dir
}

_ed_rtpl() {
  vscode $HOME/railstpl
}

_ed_tpl() {
  local name="$1"
  local path1=$HOME/tpl/$name
  if [ -z "$name" ]; then
    echo " must provide tpl <name>"
    exit 1
  elif [ ! -d "$path1" ]; then
    echo " not found: $path1"
    exit 1
  fi
  vscode $path1
}

_ed_lab() {
  local base=$HOME/groups/nexit/system
  local type="$1"
  local type_name=$type-lab
  local type_dir=$base/$type_name

  if [ -z "$type" ]; then
    echo " must provide lab <type>"
    exit 1
  fi

  if [ ! -d "$type_dir" ]; then
    echo "not_found: $type_name"
    return
  fi
  
  open_lab $type_dir
}

_ed_space() {
  _ed_sp $@
}

_ed_sp() {
  local link_path="$PWD/space"
  local pwd_dir=$(basename $PWD)
  if [ -L "$link_path" ]; then
    abs_path=$(readlink -f "$link_path")
    vscode $abs_path
  elif [[ "$pwd_dir" == "space" ]] && [[ -L "$PWD" ]]; then
    abs_path=$(readlink -f "$PWD")
    vscode $abs_path
  fi
}
