function gb --description 'Browse git'
  # git browse
  # -k : create a repo and keep
  # -f : invoke fzf -> nvim
  
  set -l options f/fzf k/keep 
  set -l foldername .tmp
  set -l curdir (pwd)
  argparse -n gb $options -- $argv 

  if set -q _flag_keep
    set foldername (echo $argv|sed -e 's,\(.*\)/,,')
  end

  mkdir -p ~/repos/$foldername
  cd ~/repos/$foldername
  pwd

  echo "creating dir $foldername and running clone"
  gh repo clone $argv . 
  if [ "$status" != "0" ]
    echo "ERROR: Clone failed.. But repo $foldername created."
    read -l -P "Delete(y/N)?" confirm_yn
    set confirm_yn (string lower $confirm_yn)
    if begin [ "$confirm_yn" = "y" ]; or [ "$confirm_yn" = "yes" ]; end
      repo
      rm -fR $foldername
    end
    cd $curdir
    return
  end
  
  if set -q _flag_fzf; vf; else; v; end

  cd $curdir

  if not set -q _flag_keep; rm -fR ~/repos/$foldername; end

end
