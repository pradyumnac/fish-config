function jp --wraps='python -m json.tool  | bat' --description 'alias jp python -m json.tool  | bat'
  python -m json.tool $argv| bat -l json; 
end
