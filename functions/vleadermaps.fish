function vleadermaps --wraps=rg\ \'\<leader\>\'\ \~/repos/nvim\ -N\ -I\|sed\ \'s/^\[\ \]\*//g\'\|sed\ \'s/^.\*\<leader\>/\<leader\>/g\'\|sort\ -r --wraps=rg\ \'\<leader\>\'\ \~/repos/nvim\ -N\ -I\|sed\ \'s/^\[\ \]\*//g\'\|sed\ \'s/^.\*\<leader\>/\<leader\>/g\'\|sort\ -r\|fzf --description alias\ vleadermaps\ rg\ \'\<leader\>\'\ \~/repos/nvim\ -N\ -I\|sed\ \'s/^\[\ \]\*//g\'\|sed\ \'s/^.\*\<leader\>/\<leader\>/g\'\|sort\ -r\|fzf
  rg '<leader>' ~/repos/nvim -N -I|sed 's/^[ ]*//g'|sed 's/^.*<leader>/<leader>/g'|sort -r|fzf $argv; 
end
