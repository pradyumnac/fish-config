set -Ux PAGER less
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -x LANG en_IN.UTF-8

set -gx fish_greeting ''

# PATH Variables
test -e ~/.local/bin; and set -gx PATH $PATH ~/.local/bin

test -e ~/.go; and set -gx GOPATH ~/.go
test -e ~/go; and set -gx GOPATH ~/go
test -e ~/.go/bin; and set -gx PATH $PATH $GOPATH/bin
test -e ~/go/bin; and set -gx PATH $PATH $GOPATH/bin
test -e /usr/local/go/bin; and set -gx PATH $PATH /usr/local/go/bin

test -e ~/.cargo/bin; and set -gx PATH $PATH ~/.cargo/bin

# test -e /opt/wine-staging/bin; and set -gx PATH $PATH /opt/wine-staging/bin

# FZF setup
# fzf_configure_bindings --git_status=\cg --history=\ch --variables= --processes=
set -gx FZF_DEFAULT_OPTS '-m --height 50% --border'

if type rg &> /dev/null
  # set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore-vcs --hidden'
  set -gx FZF_DEFAULT_COMMAND 'rg --files'
end

# Starship
starship init fish | source

source ~/repos/env/.gumrc
