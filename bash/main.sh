for f in $nex_mods_path/bash/*.bash; do
 source $f
done

for f in $HOME/user_mods/*.mod; do
 source $f
done
