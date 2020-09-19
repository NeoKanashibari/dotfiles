whatup(){
find /home /etc /lib /bin /sbin /root -newer "${@}" 2>/dev/null
}
