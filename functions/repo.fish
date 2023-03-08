function repo 
    if count $argv > /dev/null
        z ~/repos/$argv;
    else
        z ~/repos
    end 
end
