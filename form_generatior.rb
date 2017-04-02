class form_generator

def form_letter

	user_template = {"categories[0]" => "", "categories[1]" => "",
    "categories[2]" => "", "categories[3]" => ""}

	puts "Enter your {categories[0]}."
	user_template["categories[0]"] = gets.chomp

	puts 
	user_template[categories[1] = gets.chomp
	
	puts "Enter your {categories[2]}."
	user_template[categories[2] = gets.chomp

	puts "Enter your {categories[3]}."
	user_template[categories[3]] = gets.chomp

	return user_template

	end

def template_split



k= 0
categories= []
for i in 0..(template.length-1)
	for j in i..(template.length-1)
    if template[i] == "{"  && template[j] == "}"

		new_str = template[i+1..j-1]
		categories[k] = new_str
		k = k+1
		#puts new_str
		break
		
	end
end
end
return template
end
