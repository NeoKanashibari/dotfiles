export PS1='[\u@\h \w]\$'
export PS2='  '
export PS3='Select : '
#export PS4='\033[1;35m ${BASH_SOURCE}:\033[1;31m${LINENO}\033[0m:\033[1;36m${FUNCNAME[0]:+${FUNCNAME[0]}()}\033[0m: '
export PS4='|-'

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}
export PS1='\[\e[\033[01;36m\]\u@\h \[\e[36;5;34m\]\W\[\e[\033[38;5;47m\] $(parse_git_branch)\[\e[\033[00m\]\$ '
