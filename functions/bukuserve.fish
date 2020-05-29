# Defined in - @ line 1
function bukuserve --wraps='~/repos/buku/env/bin/python ~/repos/buku/env/bin/bukuserver run --host 127.0.0.1 --port 21000' --description 'alias bukuserve ~/repos/buku/env/bin/python ~/repos/buku/env/bin/bukuserver run --host 127.0.0.1 --port 21000'
  ~/repos/buku/env/bin/python ~/repos/buku/env/bin/bukuserver run --host 127.0.0.1 --port 21000 $argv;
end
