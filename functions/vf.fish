function vf 
  set __filepaths (fzf)
  if test -n "$__filepaths" 
    echo $__filepaths
    v -p $__filepaths
  else
    echo 'Cancelled by user!'
  end

end
