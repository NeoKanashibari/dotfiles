export PS1='[\u@\h \w]\$'
export PS2='  '
export PS3='Select : '
export PS4='\033[1;35m ${BASH_SOURCE}:\033[1;31m${LINENO}\033[0m:\033[1;36m${FUNCNAME[0]:+${FUNCNAME[0]}()}\033[0m: '

# Change default prompt
if [[ -f "$SOURCECONFIG/software/pureline/pureline" && $(tty) == *'pts'* ]];then
    source $SOURCECONFIG/software/pureline/pureline ~/.config/pureline.conf
elif [ -f /usr/lib/git-core/git-sh-prompt ];then
    source /usr/lib/git-core/git-sh-prompt
    PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
elif [ -f /usr/share/git/git-prompt.sh ];then
    source /usr/share/git/git-prompt.sh
    PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

