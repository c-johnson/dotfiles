#!/usr/bin/env ruby

require 'optparse'

make_env_var = false

OptionParser.new do |o|
  o.on('-d') { make_env_var = true }
  o.on('-h') { puts o; exit }
  o.parse!
end

cwd = `pwd`
cwd.strip!

_alias = ARGV[0] || cwd.split('/')[-1]    # Either use the first argument or the name of the current directory
_alias.strip!

if make_env_var
  alias_up = _alias.upcase
  `echo '\nexport #{alias_up}=$GITH/#{_alias}' >> $DOT_DIR/vars.sh`  
end

`echo '\nalias #{_alias}="cd #{cwd}"' >> $DOT_DIR/short.sh`