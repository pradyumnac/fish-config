function nbt --wraps='twitter;newsboat -u ~/repos/newsboat/urlcategory/twitter' --description 'alias nbt twitter;newsboat -u ~/repos/newsboat/urlcategory/twitter'
  twitter2rss;newsboat -u ~/repos/newsboat/urlcategory/twitter $argv; 
end
