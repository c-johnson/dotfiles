alias proj="cd ~/proj"
alias goblog="cd ~/proj/goblog"
alias premier="cd ~/proj/premier/site"
alias not="cd ~/notes"
alias note="cd ~/notes; subl ."
alias dot='cd $DOTDIR'
alias dote='cd $DOTDIR; subl .'
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
alias sut="cd "
alias koan="cd /Users/chris/ciqss/proj/koanlabs"
alias genst="cp ~/dotfiles/.depfile.sample ."
alias ndot="atom ~/dotfiles ~/notes"

function gcon {
  git branch | xargs echo | tr -d '*' | awk -v ind="$1" '{system("git checkout " $ind)}';
}

function gconc {
  git branch | xargs echo | tr -d '*' | awk -v ind="$1" '{system("git checkout " $ind)}';
  cwb
}

export -f gcon
export -f gconc

alias qa="cd /Users/chris/ciqss/proj/impekable/aruba/quote-app"
alias pg="postgres"
alias samp='cd /Users/chris/misc/programming/sample'
alias mnote='cd /Users/chris/ciqss/notes/metromile; subl .'
alias ngin="cd /usr/local/etc/nginx"

# "copy working directory" :: http://stackoverflow.com/a/3482322/376413
alias cwd="pwd | tr -d '\n' | pbcopy"

# "activate ngrok with custom 'ckj' subdomain"
alias ngr="ngrok -subdomain=ckj"

# "current directory that I am working in for whatever project I'm on"
alias cur="cd /Users/chris/ciqss/proj/chome"

alias gob="go install $DRAFT"
alias got="go test $DRAFT"
alias gor="go install $DRAFT; draft run"

alias ngin="cd /usr/local/etc/nginx"

alias resumes="cd ~/../misc/other/resumes"

# Generated
alias draf="cd $GOPATH/src/github.com/c-johnson/draft"
alias jacht="cd $GOPATH/src/github.com/clayu/jacht"
alias bnm="cd /Users/chris/ciqss/gowrk/src/github.com/c-johnson/bnm"
alias camli="cd /Users/chris/ciqss/gowrk/src/github.com/c-johnson/camlistore"

alias crm="cd /Users/chris/ciqss/proj/crm"
alias quote-app="cd /Users/chris/ciqss/proj/impek/aruba/quote-app"
alias test-app="cd /Users/chris/ciqss/proj/test-app"
alias RAD="cd /Users/chris/ciqss/proj/RAD"
alias emedcert="cd /Users/chris/ciqss/proj/RAD/emedcert"
alias poof="cd /Users/chris/ciqss/proj/poof"
alias cohesity-test="cd /Users/chris/ciqss/proj/cohesity-test"
alias survey-app="cd /Users/chris/ciqss/proj/gainfit/survey-app"
alias signup_app="cd /Users/chris/ciqss/proj/gainfit/signup_app"
alias gainfit="cd /Users/chris/ciqss/proj/gainfit"
alias mayhem="cd /Users/chris/ciqss/proj/mayhem"
alias hello-fx="cd /Users/chris/ciqss/proj/hello-fx"
alias podcasts="cd /Users/chris/ciqss/proj/fxos/podcasts"
alias cnotes="cd /Users/chris/ciqss/proj/fxos/cnotes"
alias cpod="cd /Users/chris/ciqss/proj/fxos/cpod"
alias generator-rails-ng="cd /Users/chris/ciqss/proj/generator-rails-ng"
alias ebolastats="cd /Users/chris/ciqss/proj/ebolastats"
alias abricate="cd /Users/chris/ciqss/proj/abricate"
alias dadapp="cd /Users/chris/ciqss/proj/dadweb/dadapp"
alias urb="cd /Users/chris/ciqss/proj/urbit"
alias mainst="cd /Users/chris/ciqss/proj/dadweb/mainst"
alias bookmark-cluster="cd /Users/chris/ciqss/proj/bookmark-cluster"
alias terrafic="cd /Users/chris/ciqss/proj/terrafic"
alias nerd="cd /Users/chris/ciqss/proj/nerdery-test/app"

alias crowdnews="cd /Users/chris/ciqss/proj/crowdnews"

alias bse="cd /Users/chris/ciqss/proj/bse"

alias Cockatrice="cd /Users/chris/ciqss/proj/Cockatrice"

alias bse-me="cd /Users/chris/ciqss/proj/bse-me"

alias rtm="cd /Users/chris/ciqss/proj/rtm"

alias stacksocial="cd /Users/chris/ciqss/proj/stacksocial"

alias app="cd /Users/chris/ciqss/proj/spoton/app"

alias reactnative="cd /Users/chris/ciqss/proj/reactnative"

alias react="cd /Users/chris/ciqss/proj/react"

alias dataviz="cd /Users/chris/ciqss/proj/spoton/dataviz"

alias metromile="cd /Users/chris/ciqss/proj/metromile"

alias frontend="cd /Users/chris/ciqss/proj/metromile/frontend"

alias 420="cd /Users/chris/ciqss/proj/420"

alias nlp="cd /Users/chris/ciqss/proj/nlp"

alias webrender="cd /Users/chris/ciqss/proj/webrender"

alias nodeapp="cd /Users/chris/ciqss/proj/webrender/nodeapp"

alias faw="cd /Users/chris/ciqss/proj/faw"

alias mms="cd /Users/chris/ciqss/proj/mms"

alias travels="cd /Users/chris/ciqss/proj/travels"

alias charnn="cd /Users/chris/ciqss/proj/charnn"

alias precious="cd /Users/chris/ciqss/proj/precious"

alias webapp="cd /Users/chris/ciqss/proj/koanlabs/webapp"
alias metromile="cd /Users/mmchris/proj/metromile"
alias frontend="cd /Users/mmchris/proj/metromile/frontend"
alias mms="cd /Users/mmchris/proj/metromile/mms"
alias faw="cd /Users/mmchris/proj/metromile/faw"
alias mms="cd /Users/mmchris/proj/metromile/mms"
alias mat="cd /Users/mmchris/proj/metromile/mat"

alias d3-playground="cd /Users/mmchris/proj/d3-playground"

alias decentralize="cd /Users/mmchris/proj/decentralize"

alias rainviz="cd /Users/chris/ciqss/proj/rainviz"

alias friendgineer-web="cd /Users/chris/ciqss/proj/friendgineer-web"

alias browser-laptop="cd /Users/chris/ciqss/proj/brave/browser-laptop"

alias newproj="cd /Users/chris/ciqss/proj/newproj/newproj"

alias notes="cd /Users/chris/ciqss/proj/koanlabs/notes"

alias sutra="cd /Users/chris/ciqss/proj/koanlabs/sutra"

alias koanlabs="cd /Users/chris/ciqss/proj/koanlabs"

alias koanweb="cd /Users/chris/ciqss/proj/koanlabs/koanweb"

alias chome2="cd /Users/chris/ciqss/gowrk/src/github.com/c-johnson/chome2"

alias wiki_chris_fork="cd /Users/chris/ciqss/proj/koanlabs/wiki_chris_fork"

alias diamond-lakeshore="cd /Users/chris/ciqss/proj/diamond-lakeshore"

alias metricsbot="cd /Users/chris/ciqss/proj/koanlabs/metricsbot"

alias landing="cd /Users/chris/ciqss/proj/speechmonk/landing"

alias speechmonk="cd /Users/chris/ciqss/proj/speechmonk"

alias traction="cd /Users/chris/ciqss/proj/traction"

alias urbit-examples="cd /Users/chris/ciqss/proj/urbit-examples"

alias handshake="cd /Users/chris/ciqss/proj/handshake"

alias handshake-app="cd /Users/chris/ciqss/proj/handshake/handshake-app"

alias code-day-sample="cd /Users/chris/ciqss/proj/code-day-sample"

alias selenium="cd /Users/chris/ciqss/proj/selenium"

alias smart-unfollow="cd /Users/chris/ciqss/proj/smart-unfollow"

alias vagranttest="cd /Users/chris/ciqss/proj/vagranttest"

alias blogv2="cd /Users/chris/ciqss/proj/blogv2/blogv2"

alias tweetpaint="cd /Users/chris/ciqss/proj/tweetpaint"

alias contenders="cd /Users/chris/ciqss/proj/contenders"

alias decent-blog="cd /Users/chris/ciqss/proj/contenders/decent-blog"

alias piers="cd /Users/chris/ciqss/proj/urbit/piers"

alias piers="cd /Users/chris/ciqss/proj/urbit/piers"

alias urbit-novus="cd /Users/chris/ciqss/proj/urbit/urbit-novus"

alias KoanCoinV0="cd /Users/chris/ciqss/proj/KoanCoinV0"

alias new-twitter="cd /Users/chris/ciqss/proj/newtwitter/new-twitter"

alias urbit-apps="cd /Users/chris/ciqss/proj/urbit/urbit-apps"

alias apps="cd /Users/chris/ciqss/proj/urbit/urbit-apps/apps"

alias core="cd /Users/chris/ciqss/proj/urbit/core"
