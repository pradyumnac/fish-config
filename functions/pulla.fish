function pulla --wraps='set current_dir (pwd);cd ~/repos;./pullrepos -c env shellscripts fish newsboat exports mpv tmux rclone;cd ' --description 'alias pulla set current_dir (pwd);cd ~/repos;./pullrepos -c env shellscripts fish newsboat exports mpv tmux rclone;cd '
  set current_dir (pwd);cd ~/repos;./pullrepos -c env shellscripts fish newsboat exports mpv tmux rclone;cd $current_dir; 
end
