function crepos
    if count $argv > /dev/null
        z ~/cheflingrepos/$argv;
    else
        z ~/cheflingrepos
    end 
end
