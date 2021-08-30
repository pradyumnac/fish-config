# Defined in - @ line 1
function research-up --wraps='rclone sync ~/Work/research/ gd-p92:/Research -P --exclude ".git/*"' --wraps='rclone sync ~/Work/research/ gd-p92:/Research -P --exclude .git/' --description 'alias research-up=rclone sync ~/Work/research/ gd-p92:/Research -P --exclude .git/'
  rclone sync ~/Work/research/ gd-p92:/Research -P --exclude .git/ $argv;
end
