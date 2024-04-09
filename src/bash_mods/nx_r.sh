nx_r() {
  local alias_name=""
  local alias_str=""
  if [[ "${1:0:1}" == "_" ]]; then
    alias_name="${1:1}"
    alias_str="${@:2}"
  else
    alias_name="d"
    alias_str="$@"
  fi
  alias $alias_name="$alias_str"
}
