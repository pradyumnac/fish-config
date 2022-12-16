function findbin --wraps='find ~/.local/bin ~/go/bin/ /usr/local/bin /usr/bin|fzf' --description 'alias findbin find ~/.local/bin ~/go/bin/ /usr/local/bin /usr/bin|fzf'
  find ~/.local/bin ~/go/bin/ /usr/local/bin /usr/bin|fzf $argv; 
end
