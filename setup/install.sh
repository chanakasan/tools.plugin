#!/bin/bash

set -e

main() {
  local title="Nex Mods"
  local dir_name="nex-mods"
  local start_text='__nex_mods_start'
  local end_text='__nex_mods_end'
  local bashrc="$HOME/.bashrc"
  local nex_mods_path=$(get_root_path)/$dir_name
  echo " Installing - $title"
  remove_from_bashrc
  copy_to_bashrc
  echo ""
  echo " done"
  echo ""
}

get_root_path() {
  local user=$(whoami)
  if [ "$user" = "codespace" ]; then
    echo /workspaces/.codespaces/.persistedshare
  else
    echo $HOME/dotfiles
  fi
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export nex_mods_path='$nex_mods_path >> $bashrc
  echo 'export PATH=$nex_mods_path/bin:$PATH' >> $bashrc
  echo 'source $nex_mods_path/bash/main.sh' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

# _end_
main
