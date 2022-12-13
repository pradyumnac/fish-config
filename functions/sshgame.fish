function sshgame --wraps='ssh root@192.168.0.174' --description 'alias sshgame ssh root@192.168.0.174'
  ssh root@192.168.0.174 $argv; 
end
