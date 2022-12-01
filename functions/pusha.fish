function pusha --wraps='set current_dir (pwd);cd ~/repos;./pushrepos -c env shellscripts fish newsboat exports mpv tmux rclone;cd ' --description 'alias pusha set current_dir (pwd);cd ~/repos;./pushrepos -c env shellscripts fish newsboat exports mpv tmux rclone;cd '
  set current_dir (pwd);cd ~/repos;./pushrepos -c env shellscripts fish newsboat exports mpv tmux rclone;cd $current_dir; 
end
