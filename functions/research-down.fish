# Defined in - @ line 1
function research-down --wraps='rclone sync  gd-p92:/Research ~/Work/research -P --exclude .git/' --description 'alias research-down=rclone sync  gd-p92:/Research ~/Work/research -P --exclude .git/'
  rclone sync  gd-p92:/Research ~/Work/research -P --exclude .git/ $argv;
end
