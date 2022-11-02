function bat 
  if command -sq bat; 
     eval (which bat) $argv;
  else
    batcat $argv; 
  end
end
