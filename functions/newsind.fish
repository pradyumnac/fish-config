# Defined in - @ line 1
function newsind --description 'alias newsind curl in.getnews.tech|more'
	curl in.getnews.tech|more $argv;
end
