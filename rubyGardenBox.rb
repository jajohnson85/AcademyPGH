puts "what is the length of your garden box"
length = gets.chomp
puts "What is the width of your garden box"
width = gets.chomp
puts "The perimeter of your box is " + ((length.to_i * 2) + (width.to_i * 2)).to_s + " feet"
area = width.to_i * length.to_i
#puts area
# = area.to_i
cornMath = area.to_i * (3 / 16.0)
beetsMath = area.to_i * (9 / 16.0)

puts "would you like to plant corn, carrots or beets?"
choice = gets.chomp.downcase

if (choice == "corn")
puts "You can plant " + cornMath.to_s + " stalks of corn"
end

if (choice == "carrots")
puts "you can plant " + area.to_s + " carrots"
end

if (choice == "beets")
puts "you can plant " + beetsMath.to_s + " beets"
end
