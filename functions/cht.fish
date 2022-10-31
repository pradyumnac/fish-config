function cht --wraps='cht.sh  | bat' --description 'alias cht cht.sh  | bat'
  curl cht.sh/$argv | bat; 
end
