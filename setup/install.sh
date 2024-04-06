#!/bin/bash

set -e

main() {
  local plugin_dir=tools.nexplugin
  local start_text='__nex_tools_start'
  local end_text='__nex_tools_end'
  local bashrc="$HOME/.bashrc"
  local root_path=$HOME/dotfiles
  local nex_tools_path=$root_path/$plugin_dir
  start
  remove_from_bashrc
  copy_to_bashrc
  finish
}

start() {
  echo " Installing Plugin - Nex Tools"
}

finish() {
  echo " done"
  echo
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export nex_tools_path='$nex_tools_path >> $bashrc
  echo 'export PATH=$nex_tools_path/bin:$PATH' >> $bashrc
  echo 'source $nex_tools_path/src/bash.sh' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

# _end_
main
