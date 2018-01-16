# environment variables
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[01;34m\]\w\[\033[00m\]\$ '
PROMPT_COMMAND='RC=$?; echo "$(date "+%Y-%m-%d %H:%M:%S") $$ $PWD $RC $(history 1)" >> ~/log/bash-history-$(date "+%Y-%m-%d").log'
PATH=/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

export PAGER=less
export EDITOR=vi
export http_proxy=http://proxy.arri.de:8888
export https_proxy=http://proxy.arri.de:8888
export no_proxy=localhost,127.0.0.1,.arri.de

# some aliases
alias ll="ls -lG"
alias lt="ls -lrtG"
alias lsz="ls -l | sort -n -k 5"
alias ed="open -a \"Komodo Edit 10\""
alias cd+="pushd > /dev/null"
alias cd-="popd > /dev/null"

# some other settings
shopt -s extglob
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi
