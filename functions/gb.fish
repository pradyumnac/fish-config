function gb --description 'browse git temporarily'
  # git browse
  mkdir -p ~/repos/.tmp
  gh repo clone $argv ~/repos/.tmp;
  repo .tmp
  v
  rm ~/repos/.tmp -fR
  prevd
end
