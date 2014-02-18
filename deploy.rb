#!/usr/bin/env ruby

require 'json'
require 'net/ssh'
require 'net/ssh/shell'

puts "deploying..."

def load_config(filename)
  if File.exist?(filename) 
    JSON.parse(IO.read(filename))
  else
    puts "#{filename} does not exist sorry bud"
    {}
  end
end

def pwd(rbox)
  
end

config = load_config(".depfile")

if config["name"]
  puts "Deploying as #{config['name']} (~/.ssh config file)"
  puts "Target dir is #{config['target_dir']}"

  Net::SSH::start(config["host"], config["name"]) do |ssh|
    ssh.shell do |sh|
      sh.execute "pwd"
      sh.execute "cd #{config["target_dir"]}"
      sh.execute "pwd"
    end
  end

  # rbox = Rye::Box.new(config["name"], {safe: false, password_prompt: false})
  # puts(rbox.execute!("pwd"))
  # rbox.execute!("cd #{config['target_dir']}")
  # puts(rbox.execute!("pwd"))
end