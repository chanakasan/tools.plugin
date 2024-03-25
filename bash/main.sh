for f in $nex_mods_path/bash/main/*.sh; do
  source $f
done

for f in $nex_mods_path/bash/any_new/*.sh; do
  source $f
done
