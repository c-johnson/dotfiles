#!/usr/bin/env ruby

require 'json'
require 'net/ssh'
require 'net/ssh/shell'
require_relative 'util'

puts "deploying..."

config = Util.load_config(".depfile")

if config["name"]
  puts "Deploying as #{config['name']} @ #{config['host']}"
  puts "Target dir is #{config['target_dir']}"

  Net::SSH::start(config["host"], config["name"]) do |ssh|
    ssh.shell do |sh|
      Util.run(sh, "cd #{config["target_dir"]}")
      config["cmds"].each do |cmd|
        Util.run(sh, cmd)
      end
    end
  end
end