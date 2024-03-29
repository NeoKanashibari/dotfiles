function sshs() {
  if ! file ~/.ssh/* | grep "private" ; then echo "no keys found load";return;fi
  for priv in $(file ~/.ssh/* | grep "private key" | awk -F: '{print $1}');do
      if [[ $(basename $priv) = "id_ed25519" ]];then
        ssh-add ~/.ssh/$(basename $priv)
      else
        DISPLAY=5 SSH_ASKPASS=/home/$USER/.bin/ssh-auto-ask \
        ssh-add ~/.ssh/$(basename $priv) <<< $(pass ssh/$(basename $priv))
      fi
  done
}

function sshwithbashrc() {
  declare -f > /tmp/bashall
  alias >> /tmp/bashall
  scp /tmp/bashall $1:/tmp/.bashrc_temp
  ssh -t $1 "bash --rcfile /tmp/.bashrc_temp ; rm /tmp/.bashrc_temp"
}
