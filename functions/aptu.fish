function aptu --wraps='sudo apt update && sudo apt upgrade'
  sudo apt update && sudo apt upgrade $argv -y; 
end
