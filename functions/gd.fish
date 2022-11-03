function gd --wraps='git diff --name-only' --wraps='git diff --name-status' --description 'alias gd git diff --name-status'
  git diff --name-status $argv; 
end
