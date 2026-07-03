#!/usr/bin/env ruby

human_readable = ARGV[0] != "--raw"
root = "/"
seconds_in_day = 86400

os_name = "OS"

age = (Time.now - File.stat(root).mtime).to_i / seconds_in_day

if human_readable
  puts "#{os_name} has been installed for #{age} days"
else
  puts age
end