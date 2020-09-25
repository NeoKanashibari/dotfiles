gs() {
  git status -s -b "${@}"
}
gc() {
  git commit -v "${@}"
}
g.() {
git add -p "${@}"
}
gd() {
  git diff "${@}"
}
gp() {
  git checkout -p "${@}"
}
gr() {
  git rebase "${@}"
}
grc() {
  git rebase --continue "${@}"
}
gar() {
  git add --all .
}
ga() {
  git commit --amend --reuse-message=HEAD
}
gacp(){
  git add . ; git commit -m "${@}"; git push origin master
}
