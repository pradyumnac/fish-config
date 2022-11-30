function vf --wraps='v (fzf)' --wraps='v -p (fzf)' --description 'alias vf v -p (fzf)'
  v -p (fzf) $argv; 
end
