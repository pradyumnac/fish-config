function gnometerm-backup 
  dconf dump /org/gnome/terminal/ >  $argv; 
end
