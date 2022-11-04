function extract-tar --wraps='tar -xf archive.tar.gz -C' --description 'alias extract-tar tar -xf archive.tar.gz -C'
  tar -xf $argv[1] -C $argv[2]; 
end
