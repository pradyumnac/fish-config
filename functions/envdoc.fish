# Defined in /tmp/fish.343uTe/envdoc.fish @ line 2
function envdoc --description 'prints install instructions from env repo'
  # fetch install info from env dir
  # Each paragraph has to be carefully written to adhere to format. Sample below
  # TODO: Ignore case is still not working. set all packaghenames in lowercase
  # -r : type in shell prompt for run 
  # -e : open in VIM
  
  ########### SAMPLE BELOW ######################
  # # @pythoncliapps
  # bash apps/python-cli-apps.sh
  
  set -l options r/run e/editor  
  argparse -n envdoc $options -- $argv 

  set -l pkgname $argv[1]
  set -l matched (rg -i @$pkgname ~/repos/env --vimgrep)   
  set -l filename (echo $matched|cut -d: -f1)
  # set -f lineno (echo $matched|cut -d: -f2)
  # set -f matchstring (echo $matched|cut -d: -f3)
  echo $filename $pkgname

  # The mariable method messes with the line endings
  # set -l matchedblock (cat $filename|awk -v RS= -v ORS='\n\n' -v pkgname='$pkgname' -v IGNORECASE=1 '/.*# @'$pkgname'.*/') 

  if set -q _flag_run
    commandline -r (cat $filename|awk -v RS= -v ORS='\n\n' -v pkgname='$pkgname' -v IGNORECASE=1 '/.*# @'$pkgname'.*/'|sed 's/^..//')
    return
  end

  if set -q _flag_editor
    v $filename +/@$pkgname -c "normal yap" 
  else
    # Default - not run, nor editor
  cat $filename|awk -v RS= -v ORS='\n\n' -v pkgname='$pkgname' -v IGNORECASE=1 '/.*# @'$pkgname'.*/' # |sed 's/^..//'
  end
end
