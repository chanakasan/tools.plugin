_r() {
  source $nex_tools_path/src/bash_mods/nx_r.sh
  nx_r $@
}

_rd() {
  unalias $1
}