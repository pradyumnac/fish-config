function gb --description 'Browse git'
  # git browse
  # -k : create a repo and keep
  # -f : invoke fzf -> nvim
  
  set -l options f/fzf k/keep l/local 
  set -l foldername .tmp
  set -l curdir (pwd)
  argparse -n gb $options -- $argv 

  set -l folderlist (cd ~/repos;ls;cd $curdir)
  set arg_repo_name (echo $argv|sed -e 's,\(.*\)/,,')

  if set -q _flag_local
    cd ~/repos/$arg_repo_name
    if [ "$status" = "0" ]
      if set -q _flag_fzf; vf; else; v; end
    else
      echo "ERROR: repo $arg_repo_name not found in ~/repos"
    end
    return
  end

  if contains $arg_repo_name $folderlist
    read -l -P "$arg_repo_name is present in ~/repos. Use this(Y/n)?" confirm_yn
    set confirm_yn (string lower $confirm_yn)

    if begin [ "$confirm_yn" != "n" ]; or [ "$confirm_yn" != "no" ]; end
      cd ~/repos/$arg_repo_name
      if set -q _flag_fzf; vf; else; v; end
      return
    end
  end

  if set -q _flag_keep
    set foldername (echo $argv|sed -e 's,\(.*\)/,,')
  end

  mkdir -p ~/repos/$foldername
  cd ~/repos/$foldername

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
