# Defined in - @ line 1
function newsbus --description 'alias newsbus curl us.getnews.tech/category=business|more'
	curl us.getnews.tech/category=business|more $argv;
end
