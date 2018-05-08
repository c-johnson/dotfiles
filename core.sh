### Other Setup ###
###################

#  1) brew install bash-completion

### Shell ###
#############

## Shell aliases
alias ll='ls -lagh'
alias llt='ls -laght'
alias reload='source ~/.bash_profile'
alias finds='find ! -readable -prune'
alias cwb="git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy"
alias cwd="pwd | tr -d '\n' | pbcopy"  # "copy working directory" :: http://stackoverflow.com/a/3482322/376413

## Common programs
alias nginr="sudo nginx -s reload"

## Shell helpers
bind '"\M-d": backward-kill-word'

## Ruby scripts
alias dep='$DOT_DIR/ruby/deploy.rb'
alias st='$DOT_DIR/ruby/start.rb'
alias short='$DOT_DIR/ruby/short.rb'

## Additional git commands
alias gpush='git push origin'
alias gpull='git pull origin'
alias gca='git commit -am "some commit"'

function gcon {
  git branch | xargs echo | tr -d '*' | awk -v ind="$1" '{system("git checkout " $ind)}';
}

function gconc {
  git branch | xargs echo | tr -d '*' | awk -v ind="$1" '{system("git checkout " $ind)}';
  cwb
}

export -f gcon
export -f gconc

## Port git aliases directly to terminal as "g*"
## See: https://gist.github.com/mwhite/6887990

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

function_exists() {
  declare -f -F $1 > /dev/null
  return $?
}

for al in `__git_aliases`; do
  alias g$al="git $al"

  complete_func=_git_$(__git_aliased_command $al)
  function_exists $complete_fnc && __git_complete g$al $complete_func

  flow_complete_func=_git_$(__git_aliased_command $al)
done

### Atom ###
############

# See samples/atom.sample

### Git ###
############

# Git branch autocomplete:  TODO
# Git config:  See gitconfig.sample in dotfiles directory
