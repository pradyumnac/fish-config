function aptu --wraps='sudo apt update && sudo apt upgrade' --description 'alias aptu sudo apt update && sudo apt upgrade'
  sudo apt update && sudo apt upgrade $argv; 
end
