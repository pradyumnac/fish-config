function nbga
  bash ~/repos/newsboat/datasync.sh
  newsboat -u ~/repos/newsboat/urlcategory/alerts -c ~/.local/share/newsboat/cache.ga.db
  bash ~/repos/newsboat/datasync.sh
end
