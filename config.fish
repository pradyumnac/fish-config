set -gx fish_greeting ''

# PATH Variables
test -e ~/.local/bin; and set -gx PATH $PATH ~/.local/bin
test -e ~/.go; and set -gx GOPATH ~/.go
test -e ~/go; and set -gx GOPATH ~/go
test -e ~/.go/bin; and set -gx PATH $PATH $GOPATH/bin
test -e ~/go/bin; and set -gx PATH $PATH $GOPATH/bin
test -e /usr/local/go/bin; and set -gx PATH $PATH /usr/local/go/bin
test -e /snap/bin; and set -gx PATH $PATH /snap/bin
test -e ~/.cargo/bin; and set -gx PATH $PATH ~/.cargo/bin
test -e ~/.sumneko/bin; and set -gx PATH $PATH ~/.sumneko/bin

# FZF setup
# fzf_configure_bindings --git_status=\cg --history=\ch --variables= --processes=
set -gx FZF_DEFAULT_OPTS '-m --height 50% --border'

if type rg &> /dev/null
  # set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore-vcs --hidden'
  set -gx FZF_DEFAULT_COMMAND 'rg --files --no-ignore'
end

# Starship
starship init fish | source
source ~/repos/env/.gumrc
zoxide init fish | source
