require 'date'

puts "Your first variable is: #{ARGV[0]}"
puts "Your second variable is: #{ARGV[1]}"
puts "Your third variable is: #{ARGV[2]}"

layout, title= ["_post","hello_jekyll"]

puts "---"
puts "layout: #{layout}"
puts "title: \"#{title}\""
puts "date: \"\""
puts "---"



File.open("aaa","w"){|file|
    file.puts("line1")
    file.puts("line2")
}
