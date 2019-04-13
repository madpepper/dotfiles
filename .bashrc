# Avoid to lock when using ctrl+s
stty stop undef

# Alias
alias ls='ls --color=auto'
alias ll='ls -AlFh --color=auto'
alias la='ls -CFal --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias g='git'
alias gc='git commit'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gcl='git clone'
alias gf='git fetch'
alias gp='git push'
alias .up='git -C ~/.dotfiles fetch&&git -C ~/.dotfiles merge&&~/.dotfiles/dotfiles_cp.sh'
alias .bash='vim ~/.dotfiles/.bashrc'
alias .sh='vim ~/.dotfiles/dotfiles_cp.sh'
alias .push='git -C ~/.dotfiles add --all&&git -C ~/.dotfiles commit&&git -C ~/.dotfiles push'
alias ,="sudo"

function cd-ls()
{
    \cd "$@" && ls
}
alias cd='cd-ls'

# Custom prompt
function init-prompt-git-branch()
{
    git symbolic-ref HEAD 2>/dev/null >/dev/null &&
    echo "($(git symbolic-ref HEAD 2>/dev/null | sed 's/^refs\/heads\///'))"
}
export PS1='\[\e[0;36m\]---\[\e[0m\]\n    [ \[\e[0;35m\]\t \D{%d/%m/%Y}\[\e[0m\] \[\e[1;32m\]\u\[\e[0m\] ] \[\e[1;31m\]\w\[\e[0m\] \[\e[1;36m\]$(init-prompt-git-branch)\[\e[0m\]\n\[\e[0;31m\]\$\[\e[0m\] '

# Path and other parameter
export PATH=$PATH:/sbin:/usr/sbin
export PAGER='/usr/bin/lv -c' # for man command
export EDITOR='/usr/bin/vim' # for visudo command
export HISTSIZE=100000 # History size
export TERM=xterm-256color
export LSCOLORS=ExGxdxdxCxDxDxBxBxegeg
set completion-ignore-case on

