require './input_helper'

class Message_store
	def save_message message
		@messages << message
		return @messages.length - 1
	end

	def retrieve_message id
		return @messages[id]
	end

	def initialize
		@messages = []
	end
end


input = Input_helper.new
messages = Message_store.new
keep_looping = true

while keep_looping #== true

	menu_choice = input.get_text "Would you like to S)ave, R)etrieve, or E)xit?"

	if(menu_choice.downcase == 'e')
		puts "Thanks for using the system!"
		keep_looping = false
	elsif menu_choice.downcase == 'r'
		id = input.get_number "What is the ID of the message you wish to retrieve?"
		puts "Your message is: #{messages.retrieve_message(id)}"
	elsif menu_choice.downcase == 's'
		message = input.get_text "What is your message?"
		puts "Your ID is: #{messages.save_message(message)}"
	end

end
