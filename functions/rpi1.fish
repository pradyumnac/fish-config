function rpi1 --wraps='ssh pi@192.168.0.183' --description 'alias rpi1 ssh pi@192.168.0.183'
  ssh pi@192.168.0.174 $argv;
end
