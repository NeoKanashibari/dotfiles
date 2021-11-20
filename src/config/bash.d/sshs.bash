function sshs() {
  for priv in $(file ~/.ssh/* | grep "private key" | awk -F: '{print $1}');do
      DISPLAY=5 SSH_ASKPASS=/home/$USER/.bin/ssh-auto-ask \
      ssh-add ~/.ssh/$(basename $priv) \
        <<< $(pass work/machines/ssh/admin@$(basename $priv))
  done
}

function sshwithbashrc() {
  declare -f > /tmp/bashall
  alias >> /tmp/bashall
  scp /tmp/bashall $1:/tmp/.bashrc_temp
  ssh -t $1 "bash --rcfile /tmp/.bashrc_temp ; rm /tmp/.bashrc_temp"
}

