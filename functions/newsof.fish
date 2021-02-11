# Defined in - @ line 1
function newsof --description 'alias newsof curl getnews.tech/|more'
	curl getnews.tech/|more $argv;
end
