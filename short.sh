# Folders
alias proj="cd ~/proj"
alias goblog="cd ~/proj/goblog"
alias premier="cd ~/proj/premier/site"
alias not="cd ~/notes"
alias dot='cd ~/proj/dotfiles'
alias gow='cd ~/gowrk'
alias chome="cd $GOPATH/src/$CHOME"
alias goph='cd $GOPATH/src/github.com/c-johnson/gophurls/part1_app'
alias gith='cd $GOPATH/src/$GITH'
alias dow='cd ~/../Downloads'
alias fe="cd /Users/mmchris/proj/metromile/frontend"
alias fem="cd /Users/mmchris/proj/metromile/frontend-modules"
alias mnot="cd /Users/mmchris/proj/metromile/notes"
alias nginr="sudo nginx -s reload"
alias cwb="git rev-parse --abbrev-ref HEAD | tr -d '\n' | pbcopy"

function gcon {
  gb | xargs echo | tr -d '*' | awk -v ind="$1" '{system("git checkout " $ind)}';
}

function gconc {
  gb | xargs echo | tr -d '*' | awk -v ind="$1" '{system("git checkout " $ind)}';
  cwb
}

export -f gcon
export -f gconc

alias qa="cd /Users/chris/ciqss/proj/impekable/aruba/quote-app"

# "copy working directory" :: http://stackoverflow.com/a/3482322/376413
alias cwd="pwd | tr -d '\n' | pbcopy"

# "activate ngrok with custom 'ckj' subdomain"
alias ngr="ngrok -subdomain=ckj"

# "current directory that I am working in for whatever project I'm on"
alias cur="signup_app"

alias gob="go install $DRAFT"
alias got="go test $DRAFT"
alias gor="go install $DRAFT; draft run"

alias ngin="cd /usr/local/etc/nginx"

alias resumes="cd ~/../misc/other/resumes"

# Generated
alias metromile="cd /Users/mmchris/proj/metromile"
alias frontend="cd /Users/mmchris/proj/metromile/frontend"
alias mms="cd /Users/mmchris/proj/metromile/mms"
alias faw="cd /Users/mmchris/proj/metromile/faw"
alias mms="cd /Users/mmchris/proj/metromile/mms"
alias mat="cd /Users/mmchris/proj/metromile/mat"

alias d3-playground="cd /Users/mmchris/proj/d3-playground"

alias decentralize="cd /Users/mmchris/proj/decentralize"
