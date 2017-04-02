#class Prime_test
prime = 1

def is_prime (number)
  for i in 2...number.to_i
    for j in 2...number.to_i
      if number.to_i % j == 0
       prime = 0
     end
   end
 end
 return prime
 end


#FUNCTIONS^^^^
#MAIN PROGRAM  VVVVV



#number = Prime_test.new
one = 1
while one == 1
puts "Enter a number and I'll tell you if it's prime"
user_number = gets.chomp
user_number.is_prime

puts prime


if prime == 1
  puts "your entry was a prime number"
else
  puts "your number was not prime"
end

puts "Would you like to enter another number, y or n?:"
answer = gets.chomp
if answer == "n"
  one = 2
end

end
