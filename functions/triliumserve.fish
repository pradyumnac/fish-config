# Defined in - @ line 1
function triliumserve --wraps='docker run -t -i -p 127.0.0.1:10000:8080 -v ~/trilium-data:/root/trilium-data zadam/trilium:latest' --wraps='docker run -t -i -p 127.0.0.1:10000:8080 -v ~/trilium-data:/root/trilium-data zadam/trilium:latest &' --wraps='docker run -t -i -d -p 127.0.0.1:10000:8080 -v ~/trilium-data:/root/trilium-data zadam/trilium:latest' --description 'alias triliumserve docker run -t -i -d -p 127.0.0.1:10000:8080 -v ~/trilium-data:/root/trilium-data zadam/trilium:latest'
  docker run -t -i -d -p 127.0.0.1:10000:8080 -v ~/trilium-data:/root/trilium-data zadam/trilium:latest $argv;
end
