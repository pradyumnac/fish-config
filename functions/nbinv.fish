# Defined in - @ line 1
function nbinv --wraps='newsboat -u ~/repos/newsboat/urls-companyalerts' --description 'alias nbinv newsboat -u ~/repos/newsboat/urls-companyalerts'
  newsboat -u ~/repos/newsboat/urls-companyalerts $argv;
end
