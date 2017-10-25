# environment variables
PS1='\u@\h \w \$ '
PROMPT_COMMAND='RC=$?; echo "$(date "+%Y-%m-%d %H:%M:%S") $PWD $$ $(history 1) $RC" >> ~/log/bash-history-$(date "+%Y-%m-%d").log'
PATH=/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

export PAGER=less
export EDITOR=vi
export http_proxy=http://proxy.arri.de:8888
export https_proxy=http://proxy.arri.de:8888

# some aliases
alias ll="ls -lG"
alias lt="ls -lrtG"
alias lsz="ls -l | sort -n -k 5"
alias ed="open -a \"Komodo Edit 10\""

# some other settings
shopt -s extglob
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi
