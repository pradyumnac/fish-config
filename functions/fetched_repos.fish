function fetched_repos
  set -l curdir (pwd)
  set -l repo_folders (repo;ls -d */;prevd 1)

  for repo in $repo_folders
    repo $repo
    if [ -d ".git" ]
      git remote -v|head -n 1|awk '{print $2}'
    end
  end

  cd $curdir
end
