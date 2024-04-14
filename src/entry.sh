source $(nex _config)
export nex_tools_path=$(nex _plugin tools)
export PATH=$nex_tools_path/bin:$PATH

for f in $nex_tools_path/src/bash/*.sh; do
  source $f
done
