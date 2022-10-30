function getnews --wraps='curl getnews.tech/' --description 'alias getnews curl getnews.tech/'
  curl getnews.tech/$argv; 
end
