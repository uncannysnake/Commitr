#!/usr/bin/env ruby

mode = :date # can be :date or :count
file_name="IE.txt"

case mode
when :date
  start_date = Time.now
  366.times do |i|
    File.open file_name, 'a' do |f|
      f.puts i
    end
    `git add #{file_name}`
    `git commit -m "commit ##{i}" --date "#{(start_date - i*24*3600).to_s}"`
  end
when :count
  32768.times do |i|
    File.open file_name, 'a' do |f|
      f.puts i
    end
    `git add #{file_name}`
    `git commit -m "commit ##{i}"`
  end
end

# `git push`
