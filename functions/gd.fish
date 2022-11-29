function gd --wraps='git diff --name-only' --wraps='git diff --name-status' --wraps='git diff' --description 'alias gd git diff'
  git diff $argv; 
end
