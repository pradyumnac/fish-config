# Defined in - @ line 1
function pushfeed --description 'alias pushfeed echo "$argc[2]" >> ~/.newsboat/urls'
	echo "$argc[2]" >> ~/.newsboat/urls $argv;
end
