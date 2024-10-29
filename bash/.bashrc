# environment variables
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]: \[\033[00;33m\]\w\[\033[00m\] ($(get_git_branch)) \$ '
PROMPT_COMMAND='RC=$?; echo "$(date "+%Y-%m-%d %H:%M:%S") $$ $PWD $RC $(history 1)" >> ~/log/bash-history-$(date "+%Y-%m-%d").log'
PATH=/usr/local/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

export PAGER='less -R'
export EDITOR=vi
export LC_ALL=en_US.UTF-8
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt


# some aliases
alias ll="ls -l"
alias lt="ls -lrt"
alias lsz="ls -l | sort -n -k 5"
alias kc="kubectl"
alias cd+="pushd > /dev/null"
alias cd-="popd > /dev/null"
alias grep="grep --color=auto"
alias stripcr="perl -pi -e 's/\r//g'"
alias git-unlock="gpg -d --batch ~/.netrc.gpg > /dev/null 2>&1"
alias export-creds='eval $(gpg -d --batch ~/credentials.sh.gpg 2> /dev/null)'
alias fcp-lab-dev-int-fra='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-lab-dev-kube'
alias fcp-lab-dev-tra-fra='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-lab-dev-kube-tra'
alias fcp-lab-dev-int-par='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-lab-dev-kube-par'
alias fcp-lab-dev-tra-par='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-lab-dev-kube-tra-par'
alias fcp-dev-dev-int-fra='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-dev-dev-kube'
alias fcp-dev-dev-tra-fra='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-dev-dev-kube-tra'
alias fcp-prod-int-fra='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-prod-kube'
alias fcp-prod-tra-fra='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-prod-kube-tra'
alias fcp-prod-int-par='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-prod-kube-par'
alias fcp-prod-tra-par='export KUBECONFIG=/home/og6xk9f/.kube-sso/e2em-prod-kube-tra-par'


# some other settings
shopt -s extglob


get_git_branch() {
    echo $(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3-)
}


kube_tail() {
    kubectl logs -f --ignore-errors -l app="$1"
}


cwcurl() {
    curl -v --no-progress-meter -o /dev/null $@ 2>&1 | grep -Pv '^[{}]' | colout '^>.+' '#258209' | colout '^<.+' '#094682' | colout '^\*.+' blue
}

