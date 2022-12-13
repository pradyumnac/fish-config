function gnometerm-restore
  dconf reset -f /org/gnome/terminal/;dconf load / <  $argv; 
end
