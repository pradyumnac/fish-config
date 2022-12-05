function envdoc --description 'prints install instructions from env repo'
  # git browse
  # -r : type in shell prompt for run 
  
  set -f options r/run e/editor  
  argparse -n envdoc $options -- $argv 

  set -f pkgname $argv[1]

  set -f matched (rg -i @$pkgname ~/repos/env --vimgrep)   
  set -f filename (echo $matched|cut -d: -f1)
  # set -f lineno (echo $matched|cut -d: -f2)
  # set -f matchstring (echo $matched|cut -d: -f3)


  # echo $filename $pkgname
  # echo (rg -U -I "\n.*$pkgname.*\n" -i $filename|sed -e 's/^..//') 

  if set -q _flag_run
    commandline -r (rg -U -I "\n.*$pkgname.*\n" -i $filename|sed -e 's/^..//')
    return
  end

  if set -q _flag_editor
    v $filename +/@$pkgname -c "normal yap" 
  else
    # Default - not run, nor editor
    rg -U -I "\n.*$pkgname.*\n" -i $filename|sed -e 's/^..//'  
  end
end

# v (rg -i "@$argv[1]" ~/repos/env --vimgrep|cut -z -d : -f 1) +/"@$argv[1]/i" -c "normal yap" +qall --headless 
# quirks - sed is not ignoring case insensitive search 
# sed -n '/@Canard/,/^$/Ig' apps/go-cli-apps.sh
# awk "BEGIN {IGNORECASE = 1} /@$argv[1]/" RS= $__filename|sed 's/^..//' | cat -issue failed to pass bash varoables to aek
# echo (awk "BEGIN {IGNORECASE = 1} /@$argv[1]/" RS= $__filename|sed 's/^..//') # issue - ignore case not working. termux
