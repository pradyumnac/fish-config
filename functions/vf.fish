# Defined in - @ line 1
function vf --wraps='v (fzf)' --description 'alias vf v (fzf)'
  set __filepath (fzf)
  if test -n "$__filepath" 
    echo $__filepath
    v $__filepath
  else
    echo 'Cancelled by user!'
  end
  
end
