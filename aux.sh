gohome() {
  osascript -e 'tell application "System Events" to keystroke "chome"'
  osascript -e 'tell application "System Events" to keystroke return'  
}

cst() {
  osascript -e 'tell application "System Events" to keystroke "d" using command down'
  osascript -e 'tell application "System Events" to keystroke "[" using command down'

  gohome
  osascript -e 'tell application "System Events" to keystroke "revel run $CHOME"'
  osascript -e 'tell application "System Events" to keystroke return'
  osascript -e 'tell application "System Events" to keystroke "D" using command down'

  gohome
  osascript -e 'tell application "System Events" to keystroke "grunt watch"'
  osascript -e 'tell application "System Events" to keystroke return'

  osascript -e 'tell application "System Events" to keystroke "]" using command down'
  gohome
  open http://localhost:9000
}

# left() {
#   osascript -e 'tell application "System Events" to keystroke "[" using command down'
# }

# cst() {
#   split
#   sleep 3
#   revel run $CHOME
#   left
#   grunt watch
# }

alias ll='ls -lagh'
alias llt='ls -laght'
alias reload='source ~/.bash_profile'
alias porst="open http://localhost:9000; newtab revel run $CHOME; grunt watch"
alias dep='$DOT_DIR/ruby/deploy.rb'
alias short='$DOT_DIR/ruby/short.rb'
alias bsync='rsync -r /Users/chris/ciqss/proj/chome/public/posts $CHOST:/home/chome/gowrk/src/github.com/c-johnson/chome/public'
alias dr='docker run ubuntu'