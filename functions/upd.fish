# Defined in - @ line 1
function upd --wraps='sudo apt update && sudo apt upgrade' --description 'alias upd=sudo apt update && sudo apt upgrade'
  sudo apt update && sudo apt upgrade $argv;
end
