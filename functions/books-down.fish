# Defined in - @ line 1
function books-down --wraps='rclone sync  gd-p92:/Books ~/Documents/Books -P --exclude .git/' --description 'alias books-down=rclone sync  gd-p92:/Books ~/Documents/Books -P --exclude .git/'
  rclone sync  gd-p92:/Books ~/Documents/Books -P --exclude .git/ $argv;
end
