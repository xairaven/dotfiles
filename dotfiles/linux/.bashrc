# My aliases
alias chown="chown --preserve-root"
alias chmod="chmod --preserve-root"
alias chgrp="chgrp --preserve-root"
alias cls="clear"
alias copy="xclip -selection c <"
alias du="du -ch --max-depth=1"
alias free="free -h"
alias ls="ls --color=auto"
alias la="ls -la"
alias mkdir="mkdir -p"
alias ports="sudo ss -tulpn"
alias psi="ps -p"
alias topcpu="ps -eo pid,cmd,%mem,%cpu --sort=-%cpu | head"
alias topmem="ps -eo pid,cmd,%mem,%cpu --sort=-%mem | head"

# Start screen on SSH login
# if [ "$PS1" != "" -a $TERM != "screen" -a "${STARTED_SCREEN:-x}" = x -a "${SSH_TTY:-x}" != x ]
# then
#     STARTED_SCREEN=1
#     export STARTED_SCREEN
#     sleep 1
#     screen -RR
#     #screen -qRD
# fi