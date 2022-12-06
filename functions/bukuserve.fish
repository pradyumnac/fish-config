function bukuserve --wraps='~/repos/buku/env/bin/python ~/repos/buku/env/bin/bukuserver run --host 0.0.0.0 --port 5001'
  bukuserver run --host 0.0.0.0 --port 8001 $argv;
end
