function godoc --wraps='go doc  | bat' --description 'alias godoc go doc  | bat'
  go doc $argv | bat; 
end
