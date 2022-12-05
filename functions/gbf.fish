function gbf
  # git browse and open in vim with fzf
  mkdir -p ~/repos/.tmp
  gh repo clone $argv ~/repos/.tmp/browse;
  repo ~/repos/.tmp/browse
  vf
  rm ~/repos/.tmp/browse -fR
  cdh 2
end
