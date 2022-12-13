function gnomehotkeys-backup 
  dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > ~/repos/env/config/gnome-hotkeys.dconf
end
