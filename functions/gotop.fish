# Defined in - @ line 1
function gotop --wraps='cd ~/repo/Projects' --wraps='cd ~/repos/Projects' --description 'alias gotop=cd ~/repos/Projects'
  cd ~/repos/Projects $argv;
end
