name() {
  show_name
}

win() {
  show_windows
}

ses() {
  show_sessions
}

show_name() {
  local name=$(tmux lsw -F '#{window_name}#{window_active}'|sed -n 's|^\(.*\)1$|\1|p')
  echo "Window = $name"
}

show_windows() {
  tmux list-windows -F '#I: #{window_name}' |\
  sed '/:.$/d' |\
  # sed '/^./&' |\
  fzf --reverse
  # xargs echo tmux select-window -t
}

show_sessions() {
  tmux list-sessions -F '#{session_name}' |\
  sed '/^$/d' |\
  fzf --reverse |\
  xargs tmux switch-client -t
}

