function sshs() {
  eval "$(ssh-agent)"
  for priv in $(file ~/.ssh/* | grep "private key" | awk -F: '{print $1}');do
    ssh-add $priv
  done
}
