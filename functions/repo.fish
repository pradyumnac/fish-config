function repo --wraps='cd ~/repos' --description 'alias repo=cd ~/repos'
    if count $argv > /dev/null
        z ~/repos/$argv;
    else
        z ~/repos
    end 
end
