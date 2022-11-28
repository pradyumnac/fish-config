function nbpodcasts --wraps='newsboat -u ~/repos/newsboat/urlcategory/podcasts' --description 'alias nbpodcasts newsboat -u ~/repos/newsboat/urlcategory/podcasts'
  newsboat -u ~/repos/newsboat/urlcategory/podcasts $argv; 
end
