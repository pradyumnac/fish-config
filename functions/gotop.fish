# Defined in - @ line 1
function gotop --wraps='cd ~/repo/Projects' --wraps='cd ~/repos/Projects' --wraps='cd ~/repos/projects' --description 'alias gotop=cd ~/repos/projects'
    if count $argv > /dev/null
        cd ~/repos/projects/$argv;
    else
        cd ~/repos/projects
    end 
end
