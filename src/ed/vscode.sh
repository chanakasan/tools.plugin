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
