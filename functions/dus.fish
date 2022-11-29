function dus --wraps='dust -d 1 -z 1M -b' --wraps='dust -d 1 -z 1M ' --description 'alias dus dust -d 1 -z 1M -b'
  dust -d 1 -z 1M -b $argv; 
end
