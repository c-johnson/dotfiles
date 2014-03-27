#!/usr/bin/env ruby

class Util
  def self.load_config(filename)
    if File.exist?(filename) 
      JSON.parse(IO.read(filename))
    else
      puts "#{filename} does not exist sorry bud"
      {}
    end
  end

  def self.run(sh, cmd)
    puts "Running #{cmd} ::"
    puts "Output from #{cmd} ::"
    proc = Proc.new { |sh, output| puts output }
    p = sh.default_process_class.new(sh, cmd, {}, nil)
    p.on_output &proc
    p.run
    proc
  end
end