function gitco --wraps='git checkout  -- ' --description 'alias gitco git checkout  -- '
  git checkout  $argv[1] --  $argv[2..-1]; 
end
