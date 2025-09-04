# My aliases
alias cls='clear'
alias copy='xclip -selection c <'
alias ls='ls --color=auto'
alias la='ls -la'
alias mkdir='mkdir -p'

# Start screen on SSH login
# if [ "$PS1" != "" -a $TERM != "screen" -a "${STARTED_SCREEN:-x}" = x -a "${SSH_TTY:-x}" != x ]
# then
#     STARTED_SCREEN=1
#     export STARTED_SCREEN
#     sleep 1
#     screen -RR
#     #screen -qRD
# fi