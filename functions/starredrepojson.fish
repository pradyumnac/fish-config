function starredrepojson --wraps='gh api  -H "Accept: application/vnd.github+json" /user/starred' --description 'alias starredrepojson gh api  -H "Accept: application/vnd.github+json" /user/starred'
  gh api  -H "Accept: application/vnd.github+json" /user/starred $argv; 
end
