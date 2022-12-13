function pusha
  set current_dir (pwd);cd ~/repos;./pushrepos -c env shellscripts fish newsboat exports mpv tmux rclone rofi;cd $current_dir; 
end
