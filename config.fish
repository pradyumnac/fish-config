

set -gx fish_greeting ''
test -e ~/.go; and set -gx GOPATH ~/.go

test -e ~/.go/bin; and set -gx PATH $PATH $GOPATH/bin

