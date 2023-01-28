function nbt
  nohup twitter2rss&;newsboat -u ~/.config/newsboat/urlcategory/twitter -c ~/.local/share/newsboat/cache.twitter.db
  rm nohup.out
end
