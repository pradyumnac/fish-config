function nby 
  bash ~/repos/newsboat/datasync.sh
  newsboat -u ~/.config/newsboat/urlcategory/youtube -c ~/.local/share/newsboat/cache.youtube.db 
  bash ~/repos/newsboat/datasync.sh
end
