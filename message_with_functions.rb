class Message_storage

  def get_text(prompt)
    puts prompt
    return gets.chomp
  end

    def get_menu(prompt)
      puts prompt
      answer = gets.chomp.downcase
      while answer != "s" && answer != "r" && answer != "e"
        puts "Nope. Try again and this time make it s, r, or e. Dammit."
        answer = gets.chomp.downcase
      end
      return answer
    end

    def get_number(prompt)
      puts prompt
      answer = gets.chomp

      while answer.match(/\D/)
        puts "Please type numbers only, try again: "
        answer = gets.chomp
      end
      return answer.to_i
    end
end #end of class


id = Message_storage.new

#beginning of program

inbox = []
run_prog = true
while run_prog == true

  # puts "Would you like to (S)Save a message,
  # (R)Retreive a message or (E)Exit the program?"
  # menu_choice = gets.chomp.downcase

  menu_choice = id.get_menu("Would you like to (S)Save a message,
  (R)Retrieve a message, or (E)Exit the program?")

  case menu_choice

  when "s"
    save = id.get_text("Please Enter your Message")
      inbox << save
      puts "Your message ID number is #{inbox.length-1}"

  when "r"
    address = id.get_number("What is the ID of the message you would
    like to retrieve?")
    # id_choice = gets.to_i
    puts "Your message is:" + inbox[address].to_s

  when "e"
    puts "until next time"
    run_prog = false

  end
end
