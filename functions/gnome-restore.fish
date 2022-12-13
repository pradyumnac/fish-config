function gnome-restore
  dconf reset -f /org/gnome/terminal/;dconf load / <  $argv; 
end
