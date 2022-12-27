function gnome-restore
  tilix-restore
  gnometerm-restore
  gnomehotkeys-restore
  dconf load /org/gnome/mutter/ < ~/repos/env/config/gnome-center-window.dconf
  # dconf reset -f /org/gnome/terminal/;dconf load / <  ~/repos/env/config/gnome.ini 
end
