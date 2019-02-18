## TODO:  I think everything in this file is garbage. Leaving it here for posterity for some reason. 

# Find current directory
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
export DOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DOTDIR/vars.sh

# export PATH=$PATH:~/bin
# export PATH=$PATH:$GOPATH/bin
# export PATH="$PATH:$HOME/.npm-packages/bin"

# Find current directory
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in

# load all .sh files in this directory
load_files ()
{
    DIR=$1
    echo "I am loading files now in " $DIR
    for f in $DOTDIR/*.sh
    do
     source $f
    done
}

load_gopath ()
{
    FILE=.gowrk
    if [ -f $FILE ];
    then
        GOPATH=`pwd`

        my_string=$PATH
        substring=$GOPATH
        if [ "${my_string/$substring}" = "$my_string" ] ; then
            PATH=$PATH:$GOPATH/bin
        fi
    else
        GOPATH=$HOME
    fi
}

load_files $DOTDIR

if type complete &>/dev/null; then
  _yo_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           yo-complete completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _yo_completion yo
fi
