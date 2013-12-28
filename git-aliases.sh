# https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
# http://durdn.com/blog/2012/11/22/must-have-git-aliases-advanced-examples/
# https://gist.github.com/mwhite/6887990
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

complete -F __ghf ghf
complete -F __gff gff

__ghf () 
{
  __gitcomp "$(__git_flow_list_branches 'hotfix')"
}

__gff () 
{
  __gitcomp "$(__git_flow_list_branches 'feature')"
}