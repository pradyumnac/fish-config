function pulla
  set current_dir (pwd);
  cd ~/repos;./pullrepos -c env fish newsboat exports mpv tmux rclone nvim rofi; 
  cd $current_dir; 
end
