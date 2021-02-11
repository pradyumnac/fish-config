# Defined in - @ line 1
function pushnote --description 'alias pushnote echo "(date): $1" >> ~/notes/$2.md '
	echo "(date): $argv[2]" >> ~/notes/$argv[1].md;
end
