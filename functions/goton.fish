# Defined in - @ line 1
function goton --wraps='cd ~/repo/notes' --wraps='cd ~/repos/notes' --description 'alias goton=cd ~/repos/notes'
  cd ~/repos/notes $argv;
end
