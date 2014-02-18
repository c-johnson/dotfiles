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

def run(sh, cmd)
  puts "Running #{cmd} ::"
  puts "Output from #{cmd} ::"
  proc = Proc.new { |sh, output| puts output }
  p = sh.default_process_class.new(sh, cmd, {}, nil)
  p.on_output &proc
  p.run
  proc
end

config = load_config(".depfile")

if config["name"]
  puts "Deploying as #{config['name']} @ #{config['host']}"
  puts "Target dir is #{config['target_dir']}"

  Net::SSH::start(config["host"], config["name"]) do |ssh|
    ssh.shell do |sh|
      run(sh, "cd #{config["target_dir"]}")
      run(sh, "git pull origin master")
    end
  end
end