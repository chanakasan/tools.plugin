new_jekyll() {
  local dir="$1"
  if [ -z "$dir" ]; then
    echo "new_jekyll: must provide a site name"
    return
  fi
  cp -r ~/new/tpl-jk-tailwind-blank $dir
  cd $dir
  git status
}