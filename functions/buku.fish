# Defined in - @ line 1
function buku --wraps='~/repos/buku/env/bin/buku' --wraps='~/repos/buku/env/bin/python ~/repos/buku/env/bin/poku -c ~/repos/buku/poku.cfg' --wraps='~/repos/buku/env/bin/python ~/repos/buku/env/bin/buku' --description 'alias buku ~/repos/buku/env/bin/python ~/repos/buku/env/bin/buku'
  ~/repos/buku/env/bin/python ~/repos/buku/env/bin/buku $argv;
end
