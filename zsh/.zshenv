export EDITOR=vim
export BROWSER="/mnt/c/PROGRA~2/Microsoft/Edge/Application/msedge.exe"
export LC_ALL=en_US.UTF-8
export LESS='-F -R'
export PAGER='less -F -R'
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export NODE_OPTIONS=--use-system-ca
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

typeset -U path
path=(/usr/sbin /sbin /opt/homebrew/bin /opt/homebrew/sbin $HOME/bin $HOME/.local/bin $HOME/.opencode/bin $path)
export PATH
