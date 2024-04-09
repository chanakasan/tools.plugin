_ed_rcbash() {
  vi $HOME/.bashrc
}

_ed_rc() {
  _ed_rcbash
}

_ed_rcvim() {
  vi $HOME/.vimrc
}

_ed_mod() {
  local user_mods_path=$HOME/user_mods/bash
  vi $user_mods_path
}

_ed_ssh() {
  vi $HOME/.ssh/config
}

_ed_rcinput() {
  vi $HOME/inputrc
}

_ed_input() {
  _ed_rcinput
}
