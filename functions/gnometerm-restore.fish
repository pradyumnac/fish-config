function gnometerm-restore 
  dconf reset -f /org/gnome/terminal/;dconf load /org/gnome/terminal/ <  $argv; 
end
