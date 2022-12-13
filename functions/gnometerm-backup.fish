function gnometerm-backup
  dconf dump /org/gnome/terminal/ > ~/repos/env/config/gnometerm.dconf
end
