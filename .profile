PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/vars.sh

export PATH=$PATH:~/bin
export PATH=$PATH:$GOPATH/bin

# Find current directory
# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
export DOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# load all .sh files in this directory
load_files () 
{
    DIR=$1
    echo "I am loading files now in " $DIR
    for f in $DIR/*.sh
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

load_files $DIR