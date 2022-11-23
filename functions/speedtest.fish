function speedtest --wraps='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -' --description 'alias speedtest curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'
  curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python - $argv; 
end
