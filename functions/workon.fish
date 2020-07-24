# Defined in - @ line 1
function workon --description 'alias workon=source lenv/bin/activate.fish'
	source lenv/bin/activate.fish $argv;
end
