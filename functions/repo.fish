# Defined in - @ line 1
function repo --wraps='cd ~/repos' --description 'alias repo=cd ~/repos'
  cd ~/repos/$argv;
end
