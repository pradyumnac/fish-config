function nbp
  bash ~/repos/newsboat/datasync.sh
  newsboat -u ~/.config/newsboat/urlcategory/podcasts -c ~/.local/share/newsboat/cache.podcasts.db 
  bash ~/repos/newsboat/datasync.sh
end
