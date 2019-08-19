# Path and other parameter
export PATH=$PATH:/sbin:/usr/sbin
export PAGER='/usr/bin/less -R' # for man command
export EDITOR='/usr/bin/vim' # for visudo command
export HISTSIZE=100000 # History size
export TERM=xterm-256color
export LSCOLORS=ExGxdxdxCxDxDxBxBxegeg
set completion-ignore-case on
LANG=C

uptime

test -r ~/.bashrc && . ~/.bashrc

