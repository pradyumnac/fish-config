function nbktn
  bash ~/repos/newsboat/datasync.sh
 newsboat -u ~/.config/newsboat/ktn/urls -c ~/.local/share/newsboat/cache.ktn.db
 bash ~/repos/newsboat/datasync.sh
end
