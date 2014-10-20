#!/usr/bin/env ruby

file_name="IE.txt"

32768.times do |i|
  File.open file_name, 'a' do |f|
    f.puts i
  end
  `git add #{file_name}`
  `git commit -m "commit ##{i}"`
  `git push`
end