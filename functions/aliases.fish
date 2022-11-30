function aliases --wraps='ls ~/repos/fish/functions|gum filter' --wraps=eval\ \(ls\ \~/repos/fish/functions\|gum\ filter\|sed\ \'s/\\.fish/\ /g\'\) --description alias\ aliases\ eval\ \(ls\ \~/repos/fish/functions\|gum\ filter\|sed\ \'s/\\.fish/\ /g\'\)
  eval (ls ~/repos/fish/functions|gum filter|sed 's/\.fish/ /g') $argv; 
end
