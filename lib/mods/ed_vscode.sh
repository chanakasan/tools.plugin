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

_ed_mod() {
  vscode $nex_mods_path
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
  vscode $HOME/wip/lib/base-modules
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