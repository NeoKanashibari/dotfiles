export VIRTUAL_ENV_DISABLE_PROMPT="yes"

export PS1='[\u@\h \w]\$'
export PS2='  '
export PS3='Select : '

#TODO: use termstatus if available otherwide git-prompt otherwide simple PS1
#source /usr/share/git/git-prompt.sh
PS1='$(termstatus $?)'
