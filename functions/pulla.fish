# Defined in /tmp/fish.sAXAav/pulla.fish @ line 2
function pulla
  set current_dir (pwd);
  cd ~/repos;pullrepos -c env fish nvim nvim-alt nvim-test newsboat exports mpv tmux rclone rofi ; 
  cd $current_dir;
end
