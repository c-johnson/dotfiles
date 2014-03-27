#!/usr/bin/env ruby

# This is a ruby script to open a new workspace in iTerm2 on OS X.  We use osa_proxy to tell osascript the exact sequences of characters to enter to split the panes propersly, since this appears to be the only way to navigate between panes and keep current directories together.  There is likely a better solution, but this works for now.

# Author:  Chris Johnson

require 'json'
require 'net/ssh'
require_relative 'util'

puts "starting server..."

@config = Util.load_config(".depfile")

def ret_root
  root_cmd = "cd " + @config["start"]["dir"]
  osa_proxy(root_cmd, false)
  osa_proxy("$return", false)
end

def osa_proxy(keystroke, is_super)
  is_return = keystroke == "$return"
  base = "osascript -e 'tell application \"System Events\" to keystroke"
  base = base + " return" if is_return
  base = base + " \"#{keystroke}\"" unless is_return
  base = base + " using command down" if is_super
  base = base + "'"
  system base
end

unless @config["start"].nil?
  # Open a new split screen in the right pane -- this will be your general purpose command window (1/2 of screen)
  osa_proxy("d", true)
  ret_root
  osa_proxy("[", true)

  # In the left pane, open each "hanging" service in a new vertical split until there are no more
  hangs = @config["start"]["hangs"]
  unless hangs.nil?
    hangs.each_with_index do |cmd, i|
      osa_proxy("D", true) if i > 0
      ret_root
      osa_proxy(cmd, false)
      osa_proxy("$return", false)
    end
  else 
    puts "No commands present.  This is weird.  Check your .depfile"
    return
  end

  # Return to your command window, execute whatever non-hanging commands you need to start your workplace
  osa_proxy("]", true)
  nohangs = @config["start"]["nohangs"]
  unless nohangs.nil?
    nohangs.each do |cmd|
      puts "cmd = #{cmd}"
      system cmd
    end
  end

  osa_proxy("$return", false)
end