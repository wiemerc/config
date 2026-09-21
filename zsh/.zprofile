export EDITOR=vim
export FPATH="/opt/homebrew/share/zsh/site-functions:$FPATH"
export LC_ALL=en_US.UTF-8
export LESS='-F -R'
export PAGER='less -F -R'
export PATH="/usr/sbin:/sbin:/opt/homebrew/bin:/opt/homebrew/sbin:$HOME/bin:$HOME/.local/bin:$HOME/.opencode/bin:$PATH"
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
export NODE_OPTIONS=--use-system-ca

if [[ -z "$TMUX" ]]; then
    exec tmux
fi
cat <<'END'
 ____                           _                                 ____                     __  
 / ___|  ___     __ _   ___  ___| |__   ___  ___ _ __   ___ _ __  |  _ \  ___   __ _   _    \ \ 
 \___ \ / _ \   / _` | / __|/ __| '_ \ / _ \/ _ \ '_ \ / _ \ '__| | | | |/ _ \ / _` | (_)____| |
  ___) | (_) | | (_| | \__ \ (__| | | |  __/  __/ | | |  __/ |    | |_| | (_) | (_| |  |_____| |
  |____/ \___/   \__,_| |___/\___|_| |_|\___|\___|_| |_|\___|_|    |____/ \___/ \__, | (_)    | |
                                                                                |___/        /_/ 
END
cal -m
date '+%A, %d.%m.%Y, %H:%M:%S'
