# Defined in /tmp/fish.c08Jxd/chrome-pass-import.fish @ line 2
function chrome-pass-import --wraps='pimport gopass chrome xdg.csv --out ~/.local/share/gopass/stores/root'
  echo "importing $argv[1] to gopass root store"
  pimport gopass chrome $argv[1] --out ~/.local/share/gopass/stores/root;
end
