man(){
env LESS_TERMCAP_mb=$(printf '\e[01;31m')   \
    LESS_TERMCAP_md=$(printf '\e[01;35m')   \
    LESS_TERMCAP_me=$(printf '\e[0m')       \
    LESS_TERMCAP_se=$(printf '\e[0m')       \
    LESS_TERMCAP_so=$(printf '\e[01;33m')   \
    LESS_TERMCAP_ue=$(printf '\e[0m')       \
    LESS_TERMCAP_us=$(printf '\e[04;36m')   \
    man "$@"
}
