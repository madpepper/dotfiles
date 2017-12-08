# Avoid to lock when using ctrl+s
stty stop undef

# Alias
alias ls='gls --color=auto'
alias ll='gls --color=auto -AlFh --show-control-chars'
alias la='gls --color=auto -CFal'
alias mv='mv -i'
alias rm='rm -i'
alias cp='cp -i'
alias sc='screen'
alias ps='ps --sort=start_time'

# Custom prompt
export PS1='\[\033[01;32m\]\u@\H\[\033[01;34m\] \w \$\[\033[00m\]'

# Path and other parameter
export PATH=$PATH:/sbin:/usr/sbin
export PAGER='/usr/bin/lv -c' # for man command
export EDITOR='/usr/bin/vim' # for visudo command
export HISTSIZE=100000 # History size

