# environment variables
export PS1='\u@\h \w \$ '
export PATH=/usr/local/bin:$PATH
export PAGER=less
export LS_COLORS='no=00:fi=00:di=01;34:ln=01:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:ex=01;31:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.tar=00;31:*.tgz=00;31:*.rpm=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.png=01;35:'
export DISPLAY=:0.0

# command aliases
alias ll='ls -lG'
alias lsz='ll | sort -n -k 5'
alias lt='ls -lrtG'

# other settings
shopt -s extglob 
umask 027
