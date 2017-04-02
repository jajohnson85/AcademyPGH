puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts name + ", you are " + age + " years old."

puts "In five years, you will be " + (age.to_i + 5).to_s + " years old"

if 12 > 3
puts "Yea"
end
