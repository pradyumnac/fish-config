function nbi
  bash ~/repos/newsboat/datasync.sh
	newsboat -u ~/repos/newsboat/urlcategory/investments -c ~/.local/share/newsboat/cache.inv.db
	bash ~/repos/newsboat/datasync.sh
end
