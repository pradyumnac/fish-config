# Defined in - @ line 1
function books-up --wraps='rclone sync ~/Documents/Books/ gd-p92:/Books -P --exclude .git/' --description 'alias books-up=rclone sync ~/Documents/Books/ gd-p92:/Books -P --exclude .git/'
  rclone sync ~/Documents/Books/ gd-p92:/Books -P --exclude .git/ $argv;
end
