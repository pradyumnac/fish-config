# Defined in - @ line 1
function repo --wraps='cd ~/repos' --description 'alias repo=cd ~/repos'
    if count $argv > /dev/null
        cd ~/repos/$argv;
    else
        cd ~/repos
    end 
end
