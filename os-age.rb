#!/usr/bin/env ruby

arguments = ARGV.each { |arg| }
long_output = !arguments.any?("--raw")
human_readable = !arguments.include?("--millis")
root = "/"
seconds_in_day = 86400

os_release = File.read("/etc/os-release")
pretty_name = os_release.lines.at(1)
name_start = pretty_name.index("\"") + 1
name_end = pretty_name.rindex("\"") - 1

os_name = pretty_name[name_start..name_end]

age = (Time.now - File.stat(root).mtime).to_i

if human_readable
  age /= seconds_in_day
end

if long_output
  years = age / 365
  age -= years * 365
  months = age / 30
  age -= months * 30
  days = age
  puts "#{os_name} has been installed for #{years} years, #{months} months and #{days} days"
else
  puts age
end