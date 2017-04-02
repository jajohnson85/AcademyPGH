require './lib/template_engine'

reader = Template_reader.new

puts "Enter your information please: "
user_template = gets.chomp

reader.set_template(user_template)

fields_array = reader.get_template_fields

answers_array = Array.new

fields_array.each do |field|
  puts "Please enter your #{field}."
  answers_array << gets.chomp
end
#test starts here
temp_field = ""
for i in 0...fields_array.length
  for j in 0...fields_array.length
    if fields_array[i] == fields_array[j]
      temp_field = fields_array[j] + j.to_s
      fields_array[j] = temp_field
    end
  end
end

p fields_array
input_hash = Hash[fields_array.zip answers_array]

final_output = Template_reader.new
 filled_form = final_output.run_template(input_hash)
 puts filled_form
#test ends here
#puts input_hash
