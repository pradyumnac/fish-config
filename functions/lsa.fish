# Defined in - @ line 1
function lsa --wraps='ls -lha' --description 'alias lsa ls -lha'
  ls -lha $argv;
end
