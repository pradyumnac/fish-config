function t --wraps='tmux -u' --wraps='tmux -u attach-session' --description 'alias t tmux -u attach-session'
  tmux -u attach-session $argv; 
end
