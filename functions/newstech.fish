# Defined in - @ line 1
function newstech --description 'alias newstech curl us.getnews.tech/category=technology|more'
	curl us.getnews.tech/category=technology|more $argv;
end
