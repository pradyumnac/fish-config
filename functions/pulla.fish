function pulla
  set current_dir (pwd);
  cd ~/repos;./pullrepos -c env shellscripts fish newsboat exports mpv tmux rclone nvim; 
  cd $current_dir; 
end
