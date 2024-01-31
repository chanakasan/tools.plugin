edit_bashrc() {
  vim $HOME/.bashrc
}

edit_vimrc() {
  vim $HOME/.vimrc
}

edit_umod() {
  local user_mods_path=$HOME/umods
  vim $user_mods_path
}

edit_ssh() {
  vim $HOME/.ssh/config
}

edit_inputrc() {
  vim $HOME/inputrc
}