# Defined in - @ line 1
function wttr --wraps='curl wttr.in' --description 'alias wttr curl wttr.in'
  curl wttr.in $argv;
end
