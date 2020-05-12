# Defined in - @ line 1
function gotop --wraps='cd ~/repo/Projects' --wraps='cd ~/repos/Projects' --wraps='cd ~/repos/projects' --description 'alias gotop=cd ~/repos/projects'
  cd ~/repos/projects $argv;
end
