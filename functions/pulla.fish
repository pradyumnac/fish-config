# Defined in /tmp/fish.vAKDPs/pulla.fish @ line 2
function pulla
  set current_dir (pwd);
  cd ~/repos;./pullrepos -c env fish newsboat exports mpv tmux rclone nvim nvim-alt nvim-test rofi ; 
  cd $current_dir;
end
