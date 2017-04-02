puts "What month were you born in?"
birth_month = gets.chomp.downcase

season = case birth_month

when  "december", "january", "february"
then "winter"

when "march" , "april" , "may"
then "spring"

when "june" , "july", "august"
then "summer"

when "september", "october", "november"
then "fall"
end
puts "You were born in #{season}."