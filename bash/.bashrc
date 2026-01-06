# environment variables
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[00;33m\]\w\[\033[00m\] ($(get_git_branch)) \$ '
PATH=~/.local/bin:/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

export PAGER='less -R'
export EDITOR=vim
export LC_ALL=en_US.UTF-8

# some aliases
alias ll="ls -l"
alias lt="ls -lrt"
alias grep="grep --color=auto"

# some other settings
shopt -s extglob

get_git_branch() {
    echo $(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)
}

cwcurl() {
    curl -v --no-progress-meter -o /dev/null $@ 2>&1 | grep -Pv '^[{}]' | colout '^>.+' '#258209' | colout '^<.+' '#094682' | colout '^\*.+' blue
}
