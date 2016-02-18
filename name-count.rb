puts 'Hi, what is your first name?'

first = gets.chomp

puts "and your middle name?"

middle = gets.chomp

puts "and your last name?"

last = gets.chomp

total = first + middle + last

puts "Your name is " + total.length.to_s + " characters long."
