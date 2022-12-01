function aliases
  commandline -r -- (ls ~/repos/fish/functions|gum filter|sed 's/\.fish/ /g') 
end
