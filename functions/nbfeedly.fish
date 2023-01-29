function nbfeedly
  bash ~/repos/newsboat/datasync.sh
  newsboat -u ~/repos/newsboat/urlcategory/feedly -c ~/.local/share/newsboat/cache.feedly.db
  bash ~/repos/newsboat/datasync.sh
end
