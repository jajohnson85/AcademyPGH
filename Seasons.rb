puts "What month were you born in?"
birth_month = gets.chomp.downcase
if birth_month == "december" || birth_month == "january" || birth_month == "february"
season = "winter"
end
 if birth_month == "march" || birth_month == "april" || birth_month == "may"
season = "spring"
end
if birth_month == "june" || birth_month == "july" || birth_month == "august"
season = "summer"
end
if birth_month == "september" || birth_month == "october" || birth_month == "november"
season = "fall"
end

puts "You were born in #{season}."