# Defined in - @ line 1
function vf --wraps='v (fzf)' --description 'alias vf v (fzf)'
  set __filepaths (fzf)
  if -z "$__filepath" 
    echo $__filepath
    v -p $__filepath
  else
    echo 'Cancelled by user!'
  end
  
end
