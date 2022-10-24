set -Ux PAGER less
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -x LANG en_UK.UTF-8



set -gx fish_greeting ''

# PATH Variables
test -e ~/.go; and set -gx GOPATH ~/.go
test -e ~/go; and set -gx GOPATH ~/go

test -e ~/.go/bin; and set -gx PATH $PATH $GOPATH/bin
test -e ~/go/bin; and set -gx PATH $PATH $GOPATH/bin
test -e ~/.local/bin; and set -gx PATH $PATH ~/.local/bin
test -e /opt/wine-staging/bin; and set -gx PATH $PATH /opt/wine-staging/bin

# WSl workaround to cd to home path
# cd 

# FZF setup
# fzf_configure_bindings --git_status=\cg --history=\ch --variables= --processes=
