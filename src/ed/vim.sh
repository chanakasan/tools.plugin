_ed_rcbash() {
  vim $HOME/.bashrc
}

_ed_rc() {
  _ed_rcbash
}

_ed_rcvim() {
  vim $HOME/.vimrc
}

_ed_mod() {
  local user_mods_path=$HOME/user_mods/bash
  vim $user_mods_path
}

_ed_ssh() {
  vim $HOME/.ssh/config
}

_ed_rcinput() {
  vim $HOME/inputrc
}

_ed_input() {
  _ed_rcinput
}
