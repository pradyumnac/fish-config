function vf 
  set __filepaths (fzf)
  if test -n "$__filepath" 
  then 
    echo $__filepath
    v -p $__filepath
  else
    echo 'Cancelled by user!'
  end

end
