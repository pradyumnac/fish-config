# Defined in - @ line 1
function gitdiff --wraps='git diff HEAD^ HEAD' --description 'alias gitdiff git diff HEAD^ HEAD'
  git diff HEAD^ HEAD $argv;
end
