function envdoc --description 'prints install instructions from env repo'
  # git browse
  # -r : type in shell prompt for run 
  
  set -f options r/run e/editor  
  argparse -n envdoc $options -- $argv 

  if set -q _flag_run
    set -f __matched (rg -i @$argv[1] ~/repos/env --vimgrep)   
    set -f __filename (echo $__matched|cut -d: -f1)
    set -f __lineno (echo $__matched|cut -d: -f2)
    set -f __matchstring (echo $__matched|cut -d: -f3)

    # echo $__matchstring $__filename $__lineno
  
    commandline -r (awk 'BEGIN {IGNORECASE = 1} /@Canard/' RS= $__filename|sed 's/^..//')
    # quirks - sed is not hpnoring case insensitive search 
    # sed -n '/@Canard/,/^$/Ig' apps/go-cli-apps.sh

    return
  end

  if set -q _flag_editor
    # v (rg -i "@$argv[1]" ~/repos/env --vimgrep|cut -z -d : -f 1) +/"@$argv[1]/i" -c "normal yap" +qall --headless 
    
    v (rg -i "@$argv[1]" ~/repos/env --vimgrep|cut -z -d : -f 1) +/@$argv[1] -c "set ignorecase" -c "normal yap" 
  else
    # Default
    echo (awk "BEGIN {IGNORECASE = 1} /@$argv[1]/" RS= $__filename|sed 's/^..//')
  end


end
