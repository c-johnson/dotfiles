[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# load all .sh files in this directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for f in $DIR/*.sh
do
 source $f
done

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