export nex_tools_path=$nex_plugin_base/tools.plugin

for f in $nex_tools_path/src/bash/*.sh; do
  source $f
done
