function vfl
  set __filepaths (fzf)
  if test -n "$__filepaths" 
    echo $__filepaths
    vl -p $__filepaths
  else
    echo 'Cancelled by user!'
  end

end
