def form_letter

user_info = {"name" => "", "address" => "",
    "date" => "", "absences" => ""}

puts "Enter your name."
user_info["name"] = gets.chomp

puts "Enter your address"
user_info["address"] = gets.chomp

puts "Enter today's date"
user_info["date"] = gets.chomp

puts "How many days have you been absent?"
user_info["absences"] = gets.chomp

return user_info

end

user_form = form_letter

puts user_form["date"] + "\nDear " + user_form["name"] + ",\nYou have been absent " + user_form["absences"] + " days.
We know where you live and will not hesitate to come to " + user_form["address"] + ". \nPlease contact us immediately.
Have a nice day.\nSincerely, your child's school."