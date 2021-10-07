# Defined in - @ line 1
function getbookmarks --wraps=gio\ info\ --attributes=metadata::xreader::bookmarks\ \'\'\|grep\ metadata --description alias\ getbookmarks=gio\ info\ --attributes=metadata::xreader::bookmarks\ \'\'\|grep\ metadata
  echo (gio info --attributes=metadata::xreader::bookmarks $argv|grep metadata);
end
