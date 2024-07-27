export VIRTUAL_ENV_DISABLE_PROMPT="yes"

export PS1='[\u@\h \w]\$'
export PS2='  '
export PS3='Select : '

if command -v termstatus &> /dev/null;then
    PS1='$(termstatus $?)'
fi
#TODO: otherwide git-prompt 
#source /usr/share/git/git-prompt.sh
