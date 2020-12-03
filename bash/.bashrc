# environment variables
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[00;33m\]\w\[\033[00m\] ($(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)) \$ '
PROMPT_COMMAND='RC=$?; echo "$(date "+%Y-%m-%d %H:%M:%S") $$ $PWD $RC $(history 1)" >> ~/log/bash-history-$(date "+%Y-%m-%d").log'
PATH=/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

export PAGER='less -R'
export EDITOR=vi
export LC_ALL=en_US.UTF-8

# some aliases
alias ll="ls -lG"
alias lt="ls -lrtG"
alias lsz="ls -l | sort -n -k 5"
alias cd+="pushd > /dev/null"
alias cd-="popd > /dev/null"
alias grep="grep --color=auto"
alias stripcr="perl -pi -e 's/\r//g'"
alias git-unlock="gpg -d --batch ~/.netrc.gpg > /dev/null 2>&1"
alias export-creds='eval $(gpg -d --batch ~/credentials.sh.gpg 2> /dev/null)'

# some other settings
shopt -s extglob
