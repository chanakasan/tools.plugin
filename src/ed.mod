# vim:ft=sh:

ed() {
  local a1="$1"
  local a2="$2"
  local mods_path=$nex_mods_path/src
  if [ "$a1" = "0" ]; then
    _ed_self
  elif [ "$a1" = "bin" ]; then
    _ed_bin $a2
  elif [ "$a1" = "mux" ]; then
    _ed_mux $a2
  elif [ "$a1" = "mod" ]; then
    _ed_mod $a2
  elif [ "$a1" = "umod" ]; then
    _ed_umod $a2
  else
    echo "Usage: ed <type> <file>"
  fi
}

_ed_self() {
  vi $mods_path/ed.mod
}

_ed_mod() {
  vi $mods_path/"$1".mod
}

_ed_umod() {
  local user_mods_path=$HOME/user_mods
  vi $user_mods_path/"$1".mod
}

_ed_bin() {
  local v="$1"
  if [ -z "$v" ]; then
    vi $chk_dotfiles_path/bin
  else
    vi $chk_dotfiles_path/bin/$v
  fi
}

_ed_mux() {
  local mux_path=$chk_dotfiles_path/tmux/mux
  local v="$1"
  if [ -z "$v" ]; then
    vi $mux_path
  else
    vi $mux_path/$v.sh
  fi
}

_ed_input() {
  $HOME/inputrc
}

_ed_bash() {
  vi $HOME/.bashrc
}

_ed_ssh() {
  vi $HOME/.ssh/config
}


_ed_vim() {
  vi $HOME/.vimrc
}

