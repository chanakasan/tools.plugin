# shortcut
_ed_inp() {
  _ed_inputrc
}

_ed_rc() {
  _ed_bashrc
}

_ed_vrc() {
  _ed_vimrc
}
# end shortcut

_ed_bashrc() {
  vim $HOME/.bashrc
}

_ed_vimrc() {
  vim $HOME/.vimrc
}

_ed_mod() {
  local user_mods_path=$HOME/user_mods/bash
  vim $user_mods_path
}

_ed_ssh() {
  vim $HOME/.ssh/config
}

_ed_inputrc() {
  vim $HOME/inputrc
}

