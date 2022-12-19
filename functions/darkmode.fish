# Defined in - @ line 1
function darkmode --wraps=gsettings\ set\ org.gnome.desktop.interface\ gtk-theme\ Adwaita-dark\ \\ --description alias\ darkmode=gsettings\ set\ org.gnome.desktop.interface\ gtk-theme\ Adwaita-dark\ \\\n\&\&\ gsettings\ set\ org.gnome.desktop.interface\ color-scheme\ prefer-dark
  gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark \ $argv;
end
