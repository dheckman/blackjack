def say_hello
  print "What is your name?"
  name = gets.chomp
  puts "Hello," + name + "!"
end

say_hello
