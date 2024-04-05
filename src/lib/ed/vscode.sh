# open in vscodede
_ed_pwd() {
  local pwd_dir=$(basename $PWD)
  if [[ "$pwd_dir" == "space" ]] && [[ -L "$PWD" ]]; then
    abs_path=$(readlink -f "$PWD")
    vscode $abs_path
  else
    vscode .
  fi
}

_ed_vim() {
  _ed_plug vim
}

_ed_cli() {
  _ed_plug cli
}

_ed_tools() {
  _ed_plug tools
}

_ed_tool() {
  _ed_tools
}

_ed_ed() {
  _ed_tools
}

_ed_git() {
  _ed_plug git  
}

_ed_tmux() {
  _ed_plug tmux
}

_ed_script() {
  vscode $HOME/dotfiles/devscript
}

_ed_modules() {
  vscode $HOME/modules
}

_ed_rtpl() {
  vscode $HOME/railstpl
}

_ed_space() {
  _ed_sp $@
}

