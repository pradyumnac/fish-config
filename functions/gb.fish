function gb --description 'browse git temporarily'
  # git browse
  # -k : create a repo and keep
  # -f : invoke fzf -> nvim
  
  set -f options f/fzf k/keep 
  argparse -n gb $options -- $argv 

  if set -q _flag_keep
    set -f __foldername (echo $argv|sed -e 's,\(.*\)/,,')
   else
    set -f __foldername .tmp   
  end

  mkdir -p ~/repos/$__foldername
  cd ~/repos/$__foldername

  echo "creating dir $__foldername and running clone"
  gh repo clone $argv . 
  if [ "$status" != "0" ]; echo "clone failed" && return; end

  if set -q _flag_fzf; vf; else; v; end

  prevd 1

  if not set -q _flag_keep; rm -fR ~/repos/$__foldername; end

end
