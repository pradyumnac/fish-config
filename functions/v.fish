# Defined in - @ line 1
function v --wraps=nvim --description 'alias v nvim'
  if [ -f "/home/doe/appimage/nvim.appimage" ]
     /home/doe/appimage/nvim.appimage $argv;
  else
     nvim  $argv;           
  end
  
end
