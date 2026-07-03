#!/usr/bin/env ruby

human_readable = ARGV[0] != "--raw"
root = "/"
seconds_in_day = 86400

os_release = File.read("/etc/os-release")
pretty_name = os_release.lines.at(1)
name_start = pretty_name.index("\"") + 1
name_end = pretty_name.rindex("\"") - 1

os_name = pretty_name[name_start..name_end]

age = (Time.now - File.stat(root).mtime).to_i / seconds_in_day

if human_readable
  puts "#{os_name} has been installed for #{age} days"
else
  puts age
end