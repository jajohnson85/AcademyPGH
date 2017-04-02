template = "Dear {Student Name} you have been absent for {Days Absent} days. We know you live at {Student Address} and we will FIND YOU."
k = 0 # counter for categories Array
categories = [] #empty Array categories
run_again = false #allows the user to generate multiple outputs
while run_again == false #sets up a while loop so the user can generate multiple outputs

	puts "Hi Educator! The cream team makes writing absence warnings easier.\n\n" #intial greeting
		for i in 0..(template.length-1)#sets up a counter i find {
    	for j in i..(template.length-1)#sets up a counter j find }
    		if template[i] == "{" && template[j] == "}"#sets up a if loop that will only run if both position i and position j are { and } repectively

        	new_str = template[i+1..j-1]
        	categories[k] = new_str
        	k = k+1
        	break# stops for loop j after "}" is found

    		end#ends if loop
			end#ends for loop j
		end#ends for i

	user_info = {categories[0] => ""}

	puts "Enter: " + categories[0]
	user_info[categories[0]] = gets.chomp

	puts "Enter: " + categories[1]
	user_info[categories[1]] = gets.chomp

	puts "Enter: " + categories[2]
	user_info[categories[2]] = gets.chomp

	template.gsub!("{"+ categories[0] +"}", user_info[categories[0]])
	template.gsub!("{"+ categories[1] +"}", user_info[categories[1]])
	template.gsub!("{"+ categories[2] +"}", user_info[categories[2]])

	puts "\n" + template + "\n\n"

	error = false
	while error == false
		puts "\nYour absence warning has been generated, would you like to make another? Press Y to continue or X to exit. \n\n"
		useranswer = gets.chomp.downcase
		if useranswer == "x"
			run_again = true #
			puts "\nThank you for using the generator.\n\n"
			error = true
		elsif useranswer == "y"
			error = true
		else
			puts "\nInvalid, try again\n"
			end# ends if loop
		end# ends while keeprunning loop
end#ends original while loop