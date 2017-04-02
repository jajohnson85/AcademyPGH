message = Array.new
i = 0

while(true)
	puts "Would you like to record or retrieve a message? Type 1 to record, 2 to retrieve or 3 to exit."
	answer = gets.chomp
	if  answer == "1"
		puts "Enter your message now"
		message << gets.chomp
		puts "Your message number is #{i}"
		i = i +1		
	elsif answer == "2"
		puts "Please enter your message number."
		message_number = gets.chomp.to_i
		puts message[message_number]
		
	elsif answer == "3"
		break
	end
				
end