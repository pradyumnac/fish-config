function pusha
  set current_dir (pwd);cd ~/repos;./pushrepos -c env fish newsboat exports mpv tmux rclone rofi;cd $current_dir; 
end
