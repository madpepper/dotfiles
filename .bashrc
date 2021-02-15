# Avoid to lock when using ctrl+s
stty stop undef


# Functions
## cd + ls
function cd-ls()
{
    \cd "$@" && ls --color=auto;
}
## Custom prompt
function prompt-git-branch()
{
    git symbolic-ref HEAD 2>/dev/null >/dev/null &&
        echo "($(git symbolic-ref HEAD 2>/dev/null | sed 's/^refs\/heads\///'))";
}
## cat + less
function cat-less()
{
    cat $@ | less;
}
## mount + uid option
function mount-user()
{
    uid=`id | gawk '{print \$1}' | sed -e "s/uid=//g" -e "s/(.*)//g"`;
    gid=`id | gawk '{print \$2}' | sed -e "s/gid=//g" -e "s/(.*)//g"`;
    sudo mount -o uid=$uid,gid=$gid $1 $2;
}


# Alias
## cd,ls
alias ....='cd-ls ../../..'
alias ...='cd-ls ../..'
alias ..='cd-ls ..'
alias cd='cd-ls'
alias la='ls -CFal --color=auto'
alias ll='ls -AlFh --color=auto'
alias ls='ls --color=auto'
## cp, mkdir, mv, rm, rsync
alias cp='cp -i'
alias md='mkdir -p'
alias mv='mv -i'
alias rm='rm -i'
alias rs='rsync -ahv'
## dotfiles
alias .bash='vim ~/.dotfiles/.bashrc'
alias .dep='~/.dotfiles/dotfiles_cp.sh'
alias .push='git -C ~/.dotfiles add --all;git -C ~/.dotfiles commit;git -C ~/.dotfiles push'
alias .sh='vim ~/.dotfiles/dotfiles_cp.sh'
alias .tmux='vim ~/.dotfiles/.tmux.conf'
alias .up='git -C ~/.dotfiles fetch&&git -C ~/.dotfiles merge&&~/.dotfiles/dotfiles_cp.sh'
alias .vim='vim ~/.dotfiles/.vimrc'
## apt
alias Ai='sudo apt install'
alias As='apt search'
alias Au='sudo apt update && sudo apt upgrade'
## pacman
alias Pi='sudo pacman -S'
alias Ps='sudo pacman -Ss'
alias Pu='sudo pacman -Syyu'
## git
alias GC='git clone'
alias Ga='git add'
alias GA='git add -A'
alias Gc='git commit'
alias Gd='git diff'
alias Gf='git fetch'
alias Gp='git push'
alias Gs='git status'
## grep, find
alias eg='egrep --color=auto'
alias f='find ./ -iname'
alias fg='fgrep --color=auto'
alias g='grep --color=auto'
alias grep='grep --color=auto'
alias zeg='zegrep --color=auto'
alias zfg='zfgrep --color=auto'
alias zg='zgrep --color=auto'
## other
alias ,="sudo"
alias C='clear'
alias c='cat-less'
alias dk='sudo docker'
alias kl='pkill -9 -o'
alias pg='pgrep -l'
alias tm='tmux a -t 0 || tmux'
alias x='exit'
alias rs='sudo shutdown -r now'
alias mt='mount-user'


# Prompt
export PS1='\[\e[0;36m\]---\[\e[0m\]\n    [ \[\e[0;35m\]\t \D{%d/%m/%Y}\[\e[0m\] \[\e[1;32m\]\u@\h\[\e[0m\] ] \[\e[1;31m\]\w\[\e[0m\] \[\e[1;36m\]$(prompt-git-branch)\[\e[0m\]\n\[\e[0;31m\]\$\[\e[0m\] '

LANG=ja_JP.utf8

export PATH=$PATH:~/.local/bin

