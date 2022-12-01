function htmltidy --wraps='tidy -iq --indent-spaces 2 --tidy-mark no' --wraps='tidy -indent --indent-spaces 2 -quiet --tidy-mark no' --description 'alias htmltidy tidy -indent --indent-spaces 2 -quiet --tidy-mark no'
  tidy -indent --indent-spaces 2 -quiet --tidy-mark no $argv; 
end
