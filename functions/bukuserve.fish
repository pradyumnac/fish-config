# Defined in - @ line 1
function bukuserve --wraps='~/repos/buku/env/bin/python ~/repos/buku/env/bin/bukuserver run --host 0.0.0.0 --port 5001' --description 'alias bukuserve ~/repos/buku/env/bin/python ~/repos/buku/env/bin/bukuserver run --host 0.0.0.0 --port 5001'
  ~/repos/buku/env/bin/python ~/repos/buku/env/bin/bukuserver run --host 0.0.0.0 --port 5001 $argv;
end
