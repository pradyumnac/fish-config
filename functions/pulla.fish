function pulla
  set current_dir (pwd);
  cd ~/repos;pullrepos -c env fish nvim nvim-alt nvim-test notes gorss newsboat exports mpv tmux rclone rofi; 
  cd $current_dir;
end
