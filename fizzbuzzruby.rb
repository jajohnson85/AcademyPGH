counter = 1
while counter <= 100
if counter % 15 == 0
puts "fizzbuzz"

elsif counter % 3 == 0
puts "fizz"

elsif counter % 5 == 0
puts "buzz"

else
puts counter
end
counter = counter + 1
end