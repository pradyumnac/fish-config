function gnomehotkeys-restore 
  dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ~/repos/env/config/gnome-hotkeys.dconf
end
