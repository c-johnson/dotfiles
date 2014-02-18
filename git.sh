alias gpush='git push origin'
alias gpush=git-push
alias gpull='git pull origin'
alias gca='git commit -a -m "some commit"'

git-push() {
  git push origin $1
  cwd
  ruby $CWD/git-push.rb
}