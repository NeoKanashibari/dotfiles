alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias tree="tree -a -I '.git|.svn|node_modules'"

alias ls='ls --color'
alias ll='ls -la'
alias la='ls -a'

alias cdd='cd ~/repos/dotfiles'
alias sbrc="source $HOME/.bashrc"
alias vbrc="vim $HOME/.bashrc \
    $HOME/.config/bash.d/aliases.bash \
    $HOME/.config/bash.d/prompt.bash \
    $HOME/.config/bash.d/manpagescolor.bash \
    $HOME/.config/bash.d/path.bash"

alias vvrc="vim $HOME/.vimrc"
alias vconf="vim $HOME/.config/sxhkd/sxhkdrc $HOME/.config/bspwm/bspwmrc $HOME/.config/polybar/config $HOME/.vimrc $HOME/.config/scripts/*"

alias dn="date +%d-%m-%Y_%Hh%Mm%Ss"
# IP
alias ipa="ip -br -4 addr"
alias ipr="ip -br -4 route"

# TODO: Only if nvim is installed
alias vim="nvim"
